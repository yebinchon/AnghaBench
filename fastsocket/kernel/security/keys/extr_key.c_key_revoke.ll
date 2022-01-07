; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_revoke.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.key*)* }
%struct.timespec = type { i64 }

@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@key_gc_delay = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_revoke(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timespec, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %6 = load %struct.key*, %struct.key** %2, align 8
  %7 = call i32 @key_check(%struct.key* %6)
  %8 = load %struct.key*, %struct.key** %2, align 8
  %9 = getelementptr inbounds %struct.key, %struct.key* %8, i32 0, i32 1
  %10 = call i32 @down_write_nested(i32* %9, i32 1)
  %11 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %12 = load %struct.key*, %struct.key** %2, align 8
  %13 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 3
  %14 = call i32 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %1
  %17 = load %struct.key*, %struct.key** %2, align 8
  %18 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.key*)*, i32 (%struct.key*)** %20, align 8
  %22 = icmp ne i32 (%struct.key*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.key*, %struct.key** %2, align 8
  %25 = getelementptr inbounds %struct.key, %struct.key* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.key*)*, i32 (%struct.key*)** %27, align 8
  %29 = load %struct.key*, %struct.key** %2, align 8
  %30 = call i32 %28(%struct.key* %29)
  br label %31

31:                                               ; preds = %23, %16, %1
  %32 = call i64 (...) @current_kernel_time()
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = bitcast %struct.timespec* %3 to i8*
  %35 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8
  %38 = load %struct.key*, %struct.key** %2, align 8
  %39 = getelementptr inbounds %struct.key, %struct.key* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %31
  %43 = load %struct.key*, %struct.key** %2, align 8
  %44 = getelementptr inbounds %struct.key, %struct.key* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42, %31
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.key*, %struct.key** %2, align 8
  %51 = getelementptr inbounds %struct.key, %struct.key* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.key*, %struct.key** %2, align 8
  %53 = getelementptr inbounds %struct.key, %struct.key* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @key_gc_delay, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @key_schedule_gc(i64 %56)
  br label %58

58:                                               ; preds = %48, %42
  %59 = load %struct.key*, %struct.key** %2, align 8
  %60 = getelementptr inbounds %struct.key, %struct.key* %59, i32 0, i32 1
  %61 = call i32 @up_write(i32* %60)
  ret void
}

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i32 @down_write_nested(i32*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @current_kernel_time(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @key_schedule_gc(i64) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
