; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_reject_and_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_reject_and_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i32 }
%struct.timespec = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@key_construction_mutex = common dso_local global i32 0, align 4
@KEY_FLAG_INSTANTIATED = common dso_local global i32 0, align 4
@KEY_FLAG_NEGATIVE = common dso_local global i32 0, align 4
@key_gc_delay = common dso_local global i32 0, align 4
@KEY_FLAG_USER_CONSTRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_reject_and_link(%struct.key* %0, i32 %1, i32 %2, %struct.key* %3, %struct.key* %4) #0 {
  %6 = alloca %struct.key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.key*, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.timespec, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.timespec, align 4
  store %struct.key* %0, %struct.key** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.key* %3, %struct.key** %9, align 8
  store %struct.key* %4, %struct.key** %10, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.key*, %struct.key** %6, align 8
  %18 = call i32 @key_check(%struct.key* %17)
  %19 = load %struct.key*, %struct.key** %9, align 8
  %20 = call i32 @key_check(%struct.key* %19)
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.key*, %struct.key** %9, align 8
  %24 = icmp ne %struct.key* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %5
  %26 = load %struct.key*, %struct.key** %9, align 8
  %27 = load %struct.key*, %struct.key** %6, align 8
  %28 = getelementptr inbounds %struct.key, %struct.key* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.key*, %struct.key** %6, align 8
  %31 = getelementptr inbounds %struct.key, %struct.key* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @__key_link_begin(%struct.key* %26, i32 %29, i32 %32, i64* %11)
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %25, %5
  %35 = call i32 @mutex_lock(i32* @key_construction_mutex)
  %36 = load i32, i32* @KEY_FLAG_INSTANTIATED, align 4
  %37 = load %struct.key*, %struct.key** %6, align 8
  %38 = getelementptr inbounds %struct.key, %struct.key* %37, i32 0, i32 1
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %103, label %41

41:                                               ; preds = %34
  %42 = load %struct.key*, %struct.key** %6, align 8
  %43 = getelementptr inbounds %struct.key, %struct.key* %42, i32 0, i32 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @atomic_inc(i32* %45)
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = load %struct.key*, %struct.key** %6, align 8
  %51 = getelementptr inbounds %struct.key, %struct.key* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  store i64 %49, i64* %54, align 8
  %55 = call i32 (...) @smp_wmb()
  %56 = load i32, i32* @KEY_FLAG_NEGATIVE, align 4
  %57 = load %struct.key*, %struct.key** %6, align 8
  %58 = getelementptr inbounds %struct.key, %struct.key* %57, i32 0, i32 1
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  %60 = load i32, i32* @KEY_FLAG_INSTANTIATED, align 4
  %61 = load %struct.key*, %struct.key** %6, align 8
  %62 = getelementptr inbounds %struct.key, %struct.key* %61, i32 0, i32 1
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  %64 = call i32 (...) @current_kernel_time()
  %65 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = bitcast %struct.timespec* %12 to i8*
  %67 = bitcast %struct.timespec* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  %68 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %69, %70
  %72 = load %struct.key*, %struct.key** %6, align 8
  %73 = getelementptr inbounds %struct.key, %struct.key* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.key*, %struct.key** %6, align 8
  %75 = getelementptr inbounds %struct.key, %struct.key* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @key_gc_delay, align 4
  %78 = add i32 %76, %77
  %79 = call i32 @key_schedule_gc(i32 %78)
  %80 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %81 = load %struct.key*, %struct.key** %6, align 8
  %82 = getelementptr inbounds %struct.key, %struct.key* %81, i32 0, i32 1
  %83 = call i64 @test_and_clear_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %41
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %85, %41
  store i32 0, i32* %13, align 4
  %87 = load %struct.key*, %struct.key** %9, align 8
  %88 = icmp ne %struct.key* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* %15, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.key*, %struct.key** %9, align 8
  %94 = load %struct.key*, %struct.key** %6, align 8
  %95 = call i32 @__key_link(%struct.key* %93, %struct.key* %94, i64* %11)
  br label %96

96:                                               ; preds = %92, %89, %86
  %97 = load %struct.key*, %struct.key** %10, align 8
  %98 = icmp ne %struct.key* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.key*, %struct.key** %10, align 8
  %101 = call i32 @key_revoke(%struct.key* %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102, %34
  %104 = call i32 @mutex_unlock(i32* @key_construction_mutex)
  %105 = load %struct.key*, %struct.key** %9, align 8
  %106 = icmp ne %struct.key* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load %struct.key*, %struct.key** %9, align 8
  %109 = load %struct.key*, %struct.key** %6, align 8
  %110 = getelementptr inbounds %struct.key, %struct.key* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @__key_link_end(%struct.key* %108, i32 %111, i64 %112)
  br label %114

114:                                              ; preds = %107, %103
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.key*, %struct.key** %6, align 8
  %119 = getelementptr inbounds %struct.key, %struct.key* %118, i32 0, i32 1
  %120 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %121 = call i32 @wake_up_bit(i32* %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %114
  %123 = load i32, i32* %13, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* %15, align 4
  br label %129

127:                                              ; preds = %122
  %128 = load i32, i32* %13, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  ret i32 %130
}

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i32 @__key_link_begin(%struct.key*, i32, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @current_kernel_time(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @key_schedule_gc(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @__key_link(%struct.key*, %struct.key*, i64*) #1

declare dso_local i32 @key_revoke(%struct.key*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__key_link_end(%struct.key*, i32, i64) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
