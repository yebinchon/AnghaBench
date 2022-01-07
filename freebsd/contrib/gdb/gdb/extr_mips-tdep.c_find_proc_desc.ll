; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_find_proc_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_find_proc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linked_proc_info = type { i32, %struct.linked_proc_info* }
%struct.frame_info = type { i32 }
%struct.symtab_and_line = type { i64, i64 }
%struct.symbol = type { i32 }

@linked_proc_desc_table = common dso_local global %struct.linked_proc_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, %struct.frame_info*, i32)* @find_proc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_proc_desc(i64 %0, %struct.frame_info* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.frame_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.symtab_and_line, align 8
  %11 = alloca %struct.symbol*, align 8
  %12 = alloca %struct.symtab_and_line, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.linked_proc_info*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.frame_info* %1, %struct.frame_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32* @non_heuristic_proc_desc(i64 %15, i64* %9)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %79

19:                                               ; preds = %3
  %20 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %21 = icmp eq %struct.frame_info* %20, null
  br i1 %21, label %22, label %78

22:                                               ; preds = %19
  %23 = load i32*, i32** %8, align 8
  %24 = call i64 @PROC_DESC_IS_DUMMY(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = call %struct.symbol* @PROC_SYMBOL(i32* %28)
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi %struct.symbol* [ null, %26 ], [ %29, %27 ]
  store %struct.symbol* %31, %struct.symbol** %11, align 8
  %32 = load %struct.symbol*, %struct.symbol** %11, align 8
  %33 = icmp ne %struct.symbol* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load %struct.symbol*, %struct.symbol** %11, align 8
  %36 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %35)
  %37 = call i32 @BLOCK_START(i32 %36)
  %38 = call { i64, i64 } @find_pc_line(i32 %37, i32 0)
  %39 = bitcast %struct.symtab_and_line* %12 to { i64, i64 }*
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %39, i32 0, i32 0
  %41 = extractvalue { i64, i64 } %38, 0
  store i64 %41, i64* %40, align 8
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %39, i32 0, i32 1
  %43 = extractvalue { i64, i64 } %38, 1
  store i64 %43, i64* %42, align 8
  %44 = bitcast %struct.symtab_and_line* %10 to i8*
  %45 = bitcast %struct.symtab_and_line* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  %46 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  br label %54

52:                                               ; preds = %34
  %53 = load i64, i64* %5, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i64 [ %51, %49 ], [ %53, %52 ]
  %56 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %30
  %58 = load %struct.symbol*, %struct.symbol** %11, align 8
  %59 = icmp ne %struct.symbol* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %10, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %60, %57
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @PROC_LOW_ADDR(i32* %66)
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32* @heuristic_proc_desc(i64 %67, i64 %68, %struct.frame_info* %69, i32 %70)
  store i32* %71, i32** %13, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32*, i32** %13, align 8
  store i32* %75, i32** %8, align 8
  br label %76

76:                                               ; preds = %74, %65
  br label %77

77:                                               ; preds = %76, %60
  br label %78

78:                                               ; preds = %77, %19
  br label %116

79:                                               ; preds = %3
  %80 = load %struct.linked_proc_info*, %struct.linked_proc_info** @linked_proc_desc_table, align 8
  store %struct.linked_proc_info* %80, %struct.linked_proc_info** %14, align 8
  br label %81

81:                                               ; preds = %100, %79
  %82 = load %struct.linked_proc_info*, %struct.linked_proc_info** %14, align 8
  %83 = icmp ne %struct.linked_proc_info* %82, null
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load %struct.linked_proc_info*, %struct.linked_proc_info** %14, align 8
  %86 = getelementptr inbounds %struct.linked_proc_info, %struct.linked_proc_info* %85, i32 0, i32 0
  %87 = call i64 @PROC_LOW_ADDR(i32* %86)
  %88 = load i64, i64* %5, align 8
  %89 = icmp sle i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.linked_proc_info*, %struct.linked_proc_info** %14, align 8
  %92 = getelementptr inbounds %struct.linked_proc_info, %struct.linked_proc_info* %91, i32 0, i32 0
  %93 = call i64 @PROC_HIGH_ADDR(i32* %92)
  %94 = load i64, i64* %5, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.linked_proc_info*, %struct.linked_proc_info** %14, align 8
  %98 = getelementptr inbounds %struct.linked_proc_info, %struct.linked_proc_info* %97, i32 0, i32 0
  store i32* %98, i32** %4, align 8
  br label %118

99:                                               ; preds = %90, %84
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.linked_proc_info*, %struct.linked_proc_info** %14, align 8
  %102 = getelementptr inbounds %struct.linked_proc_info, %struct.linked_proc_info* %101, i32 0, i32 1
  %103 = load %struct.linked_proc_info*, %struct.linked_proc_info** %102, align 8
  store %struct.linked_proc_info* %103, %struct.linked_proc_info** %14, align 8
  br label %81

104:                                              ; preds = %81
  %105 = load i64, i64* %9, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64, i64* %5, align 8
  %109 = call i64 @heuristic_proc_start(i64 %108)
  store i64 %109, i64* %9, align 8
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32* @heuristic_proc_desc(i64 %111, i64 %112, %struct.frame_info* %113, i32 %114)
  store i32* %115, i32** %8, align 8
  br label %116

116:                                              ; preds = %110, %78
  %117 = load i32*, i32** %8, align 8
  store i32* %117, i32** %4, align 8
  br label %118

118:                                              ; preds = %116, %96
  %119 = load i32*, i32** %4, align 8
  ret i32* %119
}

declare dso_local i32* @non_heuristic_proc_desc(i64, i64*) #1

declare dso_local i64 @PROC_DESC_IS_DUMMY(i32*) #1

declare dso_local %struct.symbol* @PROC_SYMBOL(i32*) #1

declare dso_local { i64, i64 } @find_pc_line(i32, i32) #1

declare dso_local i32 @BLOCK_START(i32) #1

declare dso_local i32 @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @heuristic_proc_desc(i64, i64, %struct.frame_info*, i32) #1

declare dso_local i64 @PROC_LOW_ADDR(i32*) #1

declare dso_local i64 @PROC_HIGH_ADDR(i32*) #1

declare dso_local i64 @heuristic_proc_start(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
