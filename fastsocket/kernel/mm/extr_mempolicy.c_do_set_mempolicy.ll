; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_do_set_mempolicy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_do_set_mempolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.mempolicy*, %struct.mm_struct* }
%struct.mempolicy = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@scratch = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@MPOL_INTERLEAVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16, i16, i32*)* @do_set_mempolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_set_mempolicy(i16 zeroext %0, i16 zeroext %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mempolicy*, align 8
  %9 = alloca %struct.mempolicy*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i32, align 4
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %10, align 8
  %15 = load i32, i32* @scratch, align 4
  %16 = call i32 @NODEMASK_SCRATCH(i32 %15)
  %17 = load i32, i32* @scratch, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* @ENOMEM, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %4, align 8
  br label %109

22:                                               ; preds = %3
  %23 = load i16, i16* %5, align 2
  %24 = load i16, i16* %6, align 2
  %25 = load i32*, i32** %7, align 8
  %26 = call %struct.mempolicy* @mpol_new(i16 zeroext %23, i16 zeroext %24, i32* %25)
  store %struct.mempolicy* %26, %struct.mempolicy** %8, align 8
  %27 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %28 = call i64 @IS_ERR(%struct.mempolicy* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.mempolicy* %31)
  store i32 %32, i32* %11, align 4
  br label %104

33:                                               ; preds = %22
  %34 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %35 = icmp ne %struct.mm_struct* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 0
  %39 = call i32 @down_write(i32* %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %42 = call i32 @task_lock(%struct.TYPE_6__* %41)
  %43 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @scratch, align 4
  %46 = call i32 @mpol_set_nodemask(%struct.mempolicy* %43, i32* %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %40
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %51 = call i32 @task_unlock(%struct.TYPE_6__* %50)
  %52 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %53 = icmp ne %struct.mm_struct* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %56 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %55, i32 0, i32 0
  %57 = call i32 @up_write(i32* %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %60 = call i32 @mpol_put(%struct.mempolicy* %59)
  br label %104

61:                                               ; preds = %40
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.mempolicy*, %struct.mempolicy** %63, align 8
  store %struct.mempolicy* %64, %struct.mempolicy** %9, align 8
  %65 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store %struct.mempolicy* %65, %struct.mempolicy** %67, align 8
  %68 = call i32 (...) @mpol_set_task_struct_flag()
  %69 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %70 = icmp ne %struct.mempolicy* %69, null
  br i1 %70, label %71, label %92

71:                                               ; preds = %61
  %72 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %73 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MPOL_INTERLEAVE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %79 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @nodes_weight(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %86 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @first_node(i32 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %84, %77, %71, %61
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %94 = call i32 @task_unlock(%struct.TYPE_6__* %93)
  %95 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %96 = icmp ne %struct.mm_struct* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %99 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %98, i32 0, i32 0
  %100 = call i32 @up_write(i32* %99)
  br label %101

101:                                              ; preds = %97, %92
  %102 = load %struct.mempolicy*, %struct.mempolicy** %9, align 8
  %103 = call i32 @mpol_put(%struct.mempolicy* %102)
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %101, %58, %30
  %105 = load i32, i32* @scratch, align 4
  %106 = call i32 @NODEMASK_SCRATCH_FREE(i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %4, align 8
  br label %109

109:                                              ; preds = %104, %19
  %110 = load i64, i64* %4, align 8
  ret i64 %110
}

declare dso_local i32 @NODEMASK_SCRATCH(i32) #1

declare dso_local %struct.mempolicy* @mpol_new(i16 zeroext, i16 zeroext, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mempolicy*) #1

declare dso_local i32 @PTR_ERR(%struct.mempolicy*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @task_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @mpol_set_nodemask(%struct.mempolicy*, i32*, i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mpol_put(%struct.mempolicy*) #1

declare dso_local i32 @mpol_set_task_struct_flag(...) #1

declare dso_local i64 @nodes_weight(i32) #1

declare dso_local i32 @first_node(i32) #1

declare dso_local i32 @NODEMASK_SCRATCH_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
