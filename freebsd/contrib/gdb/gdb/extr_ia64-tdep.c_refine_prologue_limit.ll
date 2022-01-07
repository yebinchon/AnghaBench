; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_refine_prologue_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_refine_prologue_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64, i64, i64 }

@max_skip_non_prologue_insns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32*)* @refine_prologue_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @refine_prologue_limit(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.symtab_and_line, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.symtab_and_line, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.symtab_and_line, align 8
  %13 = alloca %struct.symtab_and_line, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i32*, i32** %6, align 8
  store i32 0, i32* %15, align 4
  %16 = load i64, i64* %4, align 8
  call void @find_pc_line(%struct.symtab_and_line* sret %9, i64 %16, i32 0)
  %17 = bitcast %struct.symtab_and_line* %7 to i8*
  %18 = bitcast %struct.symtab_and_line* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %89

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load i32, i32* @max_skip_non_prologue_insns, align 4
  %26 = mul nsw i32 2, %25
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %67, %22
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %34, %35
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ true, %30 ], [ %36, %33 ]
  br label %39

39:                                               ; preds = %37, %27
  %40 = phi i1 [ false, %27 ], [ %38, %37 ]
  br i1 %40, label %41, label %70

41:                                               ; preds = %39
  %42 = load i64, i64* %11, align 8
  call void @find_pc_line(%struct.symtab_and_line* sret %13, i64 %42, i32 0)
  %43 = bitcast %struct.symtab_and_line* %12 to i8*
  %44 = bitcast %struct.symtab_and_line* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 24, i1 false)
  %45 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %12, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %70

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %12, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %51, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %12, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = bitcast %struct.symtab_and_line* %7 to i8*
  %63 = bitcast %struct.symtab_and_line* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 24, i1 false)
  br label %64

64:                                               ; preds = %61, %55, %49
  %65 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %12, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %10, align 4
  br label %27

70:                                               ; preds = %48, %39
  %71 = load i64, i64* %5, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %73, %70
  %79 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %5, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i64 @get_pc_function_start(i64 %82)
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32*, i32** %6, align 8
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %85, %78
  br label %88

88:                                               ; preds = %87, %73
  br label %89

89:                                               ; preds = %88, %3
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local void @find_pc_line(%struct.symtab_and_line* sret, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @get_pc_function_start(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
