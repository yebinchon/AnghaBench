; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyctl.c_keyctl_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.key = type { i32, i32 }

@KEY_LOOKUP_CREATE = common dso_local global i32 0, align 4
@KEY_LOOKUP_PARTIAL = common dso_local global i32 0, align 4
@KEY_SETATTR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@key_gc_delay = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_set_timeout(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.timespec, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @KEY_LOOKUP_CREATE, align 4
  %14 = load i32, i32* @KEY_LOOKUP_PARTIAL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @KEY_SETATTR, align 4
  %17 = call %struct.key* @lookup_user_key(i32 %12, i32 %15, i32 %16)
  store %struct.key* %17, %struct.key** %8, align 8
  %18 = load %struct.key*, %struct.key** %8, align 8
  %19 = call i64 @IS_ERR(%struct.key* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %2
  %22 = load %struct.key*, %struct.key** %8, align 8
  %23 = call i64 @PTR_ERR(%struct.key* %22)
  %24 = load i64, i64* @EACCES, align 8
  %25 = sub nsw i64 0, %24
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = call %struct.key* @key_get_instantiation_authkey(i32 %28)
  store %struct.key* %29, %struct.key** %7, align 8
  %30 = load %struct.key*, %struct.key** %7, align 8
  %31 = call i64 @IS_ERR(%struct.key* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %27
  %34 = load %struct.key*, %struct.key** %7, align 8
  %35 = call i32 @key_put(%struct.key* %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @KEY_LOOKUP_PARTIAL, align 4
  %38 = call %struct.key* @lookup_user_key(i32 %36, i32 %37, i32 0)
  store %struct.key* %38, %struct.key** %8, align 8
  %39 = load %struct.key*, %struct.key** %8, align 8
  %40 = call i64 @IS_ERR(%struct.key* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %49

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %27
  br label %45

45:                                               ; preds = %44, %21
  %46 = load %struct.key*, %struct.key** %8, align 8
  %47 = call i64 @PTR_ERR(%struct.key* %46)
  store i64 %47, i64* %10, align 8
  br label %81

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %48, %42
  %50 = load %struct.key*, %struct.key** %8, align 8
  %51 = call %struct.key* @key_ref_to_ptr(%struct.key* %50)
  store %struct.key* %51, %struct.key** %6, align 8
  %52 = load %struct.key*, %struct.key** %6, align 8
  %53 = getelementptr inbounds %struct.key, %struct.key* %52, i32 0, i32 1
  %54 = call i32 @down_write(i32* %53)
  store i32 0, i32* %9, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ugt i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = call i32 (...) @current_kernel_time()
  %59 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = bitcast %struct.timespec* %5 to i8*
  %61 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %63, %64
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %57, %49
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.key*, %struct.key** %6, align 8
  %69 = getelementptr inbounds %struct.key, %struct.key* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.key*, %struct.key** %6, align 8
  %71 = getelementptr inbounds %struct.key, %struct.key* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @key_gc_delay, align 4
  %74 = add i32 %72, %73
  %75 = call i32 @key_schedule_gc(i32 %74)
  %76 = load %struct.key*, %struct.key** %6, align 8
  %77 = getelementptr inbounds %struct.key, %struct.key* %76, i32 0, i32 1
  %78 = call i32 @up_write(i32* %77)
  %79 = load %struct.key*, %struct.key** %6, align 8
  %80 = call i32 @key_put(%struct.key* %79)
  store i64 0, i64* %10, align 8
  br label %81

81:                                               ; preds = %66, %45
  %82 = load i64, i64* %10, align 8
  ret i64 %82
}

declare dso_local %struct.key* @lookup_user_key(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i64 @PTR_ERR(%struct.key*) #1

declare dso_local %struct.key* @key_get_instantiation_authkey(i32) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local %struct.key* @key_ref_to_ptr(%struct.key*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @current_kernel_time(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @key_schedule_gc(i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
