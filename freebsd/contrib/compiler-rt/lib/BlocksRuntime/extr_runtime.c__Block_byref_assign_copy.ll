; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_byref_assign_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_byref_assign_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Block_byref = type { i32, %struct.Block_byref*, i64, i32 (%struct.Block_byref*, %struct.Block_byref*)*, i32, i32* }

@BLOCK_IS_GC = common dso_local global i32 0, align 4
@BLOCK_REFCOUNT_MASK = common dso_local global i32 0, align 4
@BLOCK_FIELD_IS_BYREF = common dso_local global i32 0, align 4
@BLOCK_FIELD_IS_WEAK = common dso_local global i32 0, align 4
@_Byref_flag_initial_value = common dso_local global i32 0, align 4
@_NSConcreteWeakBlockVariable = common dso_local global i32 0, align 4
@BLOCK_HAS_COPY_DISPOSE = common dso_local global i32 0, align 4
@BLOCK_NEEDS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @_Block_byref_assign_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Block_byref_assign_copy(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Block_byref**, align 8
  %8 = alloca %struct.Block_byref*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Block_byref*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.Block_byref**
  store %struct.Block_byref** %12, %struct.Block_byref*** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.Block_byref*
  store %struct.Block_byref* %14, %struct.Block_byref** %8, align 8
  %15 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %16 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %15, i32 0, i32 1
  %17 = load %struct.Block_byref*, %struct.Block_byref** %16, align 8
  %18 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BLOCK_IS_GC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %128

24:                                               ; preds = %3
  %25 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %26 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %25, i32 0, i32 1
  %27 = load %struct.Block_byref*, %struct.Block_byref** %26, align 8
  %28 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BLOCK_REFCOUNT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %110

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @BLOCK_FIELD_IS_BYREF, align 4
  %36 = load i32, i32* @BLOCK_FIELD_IS_WEAK, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load i32, i32* @BLOCK_FIELD_IS_BYREF, align 4
  %40 = load i32, i32* @BLOCK_FIELD_IS_WEAK, align 4
  %41 = or i32 %39, %40
  %42 = icmp eq i32 %38, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %45 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @_Block_allocator(i64 %46, i32 0, i32 %47)
  %49 = inttoptr i64 %48 to %struct.Block_byref*
  store %struct.Block_byref* %49, %struct.Block_byref** %10, align 8
  %50 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %51 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @_Byref_flag_initial_value, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.Block_byref*, %struct.Block_byref** %10, align 8
  %56 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.Block_byref*, %struct.Block_byref** %10, align 8
  %58 = load %struct.Block_byref*, %struct.Block_byref** %10, align 8
  %59 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %58, i32 0, i32 1
  store %struct.Block_byref* %57, %struct.Block_byref** %59, align 8
  %60 = load %struct.Block_byref*, %struct.Block_byref** %10, align 8
  %61 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %62 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %61, i32 0, i32 1
  store %struct.Block_byref* %60, %struct.Block_byref** %62, align 8
  %63 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %64 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.Block_byref*, %struct.Block_byref** %10, align 8
  %67 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %33
  %71 = load %struct.Block_byref*, %struct.Block_byref** %10, align 8
  %72 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %71, i32 0, i32 5
  store i32* @_NSConcreteWeakBlockVariable, i32** %72, align 8
  br label %73

73:                                               ; preds = %70, %33
  %74 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %75 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BLOCK_HAS_COPY_DISPOSE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %73
  %81 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %82 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %81, i32 0, i32 3
  %83 = load i32 (%struct.Block_byref*, %struct.Block_byref*)*, i32 (%struct.Block_byref*, %struct.Block_byref*)** %82, align 8
  %84 = load %struct.Block_byref*, %struct.Block_byref** %10, align 8
  %85 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %84, i32 0, i32 3
  store i32 (%struct.Block_byref*, %struct.Block_byref*)* %83, i32 (%struct.Block_byref*, %struct.Block_byref*)** %85, align 8
  %86 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %87 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.Block_byref*, %struct.Block_byref** %10, align 8
  %90 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %92 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %91, i32 0, i32 3
  %93 = load i32 (%struct.Block_byref*, %struct.Block_byref*)*, i32 (%struct.Block_byref*, %struct.Block_byref*)** %92, align 8
  %94 = load %struct.Block_byref*, %struct.Block_byref** %10, align 8
  %95 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %96 = call i32 %93(%struct.Block_byref* %94, %struct.Block_byref* %95)
  br label %109

97:                                               ; preds = %73
  %98 = load %struct.Block_byref*, %struct.Block_byref** %10, align 8
  %99 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %98, i32 0, i32 3
  %100 = bitcast i32 (%struct.Block_byref*, %struct.Block_byref*)** %99 to i8*
  %101 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %102 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %101, i32 0, i32 3
  %103 = bitcast i32 (%struct.Block_byref*, %struct.Block_byref*)** %102 to i8*
  %104 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %105 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %106, 4
  %108 = call i32 @_Block_memmove(i8* %100, i8* %103, i64 %107)
  br label %109

109:                                              ; preds = %97, %80
  br label %127

110:                                              ; preds = %24
  %111 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %112 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %111, i32 0, i32 1
  %113 = load %struct.Block_byref*, %struct.Block_byref** %112, align 8
  %114 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @BLOCK_NEEDS_FREE, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @BLOCK_NEEDS_FREE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %110
  %121 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %122 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %121, i32 0, i32 1
  %123 = load %struct.Block_byref*, %struct.Block_byref** %122, align 8
  %124 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %123, i32 0, i32 0
  %125 = call i32 @latching_incr_int(i32* %124)
  br label %126

126:                                              ; preds = %120, %110
  br label %127

127:                                              ; preds = %126, %109
  br label %128

128:                                              ; preds = %127, %23
  %129 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  %130 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %129, i32 0, i32 1
  %131 = load %struct.Block_byref*, %struct.Block_byref** %130, align 8
  %132 = load %struct.Block_byref**, %struct.Block_byref*** %7, align 8
  %133 = bitcast %struct.Block_byref** %132 to i8**
  %134 = call i32 @_Block_assign(%struct.Block_byref* %131, i8** %133)
  ret void
}

declare dso_local i64 @_Block_allocator(i64, i32, i32) #1

declare dso_local i32 @_Block_memmove(i8*, i8*, i64) #1

declare dso_local i32 @latching_incr_int(i32*) #1

declare dso_local i32 @_Block_assign(%struct.Block_byref*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
