; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_permission.c_key_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_permission.c_key_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i64, i32 }
%struct.timespec = type { i64 }

@EKEYREVOKED = common dso_local global i32 0, align 4
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@KEY_FLAG_DEAD = common dso_local global i32 0, align 4
@EKEYEXPIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_validate(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.key*, %struct.key** %2, align 8
  %7 = icmp ne %struct.key* %6, null
  br i1 %7, label %8, label %44

8:                                                ; preds = %1
  %9 = load i32, i32* @EKEYREVOKED, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %12 = load %struct.key*, %struct.key** %2, align 8
  %13 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = load i32, i32* @KEY_FLAG_DEAD, align 4
  %18 = load %struct.key*, %struct.key** %2, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %8
  br label %45

23:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  %24 = load %struct.key*, %struct.key** %2, align 8
  %25 = getelementptr inbounds %struct.key, %struct.key* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = call i64 (...) @current_kernel_time()
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = bitcast %struct.timespec* %3 to i8*
  %32 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.key*, %struct.key** %2, align 8
  %36 = getelementptr inbounds %struct.key, %struct.key* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* @EKEYEXPIRED, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %28
  br label %43

43:                                               ; preds = %42, %23
  br label %44

44:                                               ; preds = %43, %1
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @current_kernel_time(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
