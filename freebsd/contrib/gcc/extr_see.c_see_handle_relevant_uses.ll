; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_handle_relevant_uses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_handle_relevant_uses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_entry = type { i32* }
%struct.TYPE_2__ = type { i64, i32 }

@uses_num = common dso_local global i32 0, align 4
@df = common dso_local global i32 0, align 4
@use_entry = common dso_local global i32* null, align 8
@SIGN_EXTENDED_DEF = common dso_local global i64 0, align 8
@ZERO_EXTENDED_DEF = common dso_local global i64 0, align 8
@SIGN_EXTEND = common dso_local global i32 0, align 4
@ZERO_EXTEND = common dso_local global i32 0, align 4
@USE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @see_handle_relevant_uses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_handle_relevant_uses() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.web_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store %struct.web_entry* null, %struct.web_entry** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %98, %0
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @uses_num, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %101

13:                                               ; preds = %9
  %14 = load i32, i32* @df, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @DF_USES_GET(i32 %14, i32 %15)
  %17 = call i32* @DF_REF_INSN(i32 %16)
  store i32* %17, i32** %2, align 8
  %18 = load i32, i32* @df, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @DF_USES_GET(i32 %18, i32 %19)
  %21 = call i32* @DF_REF_REAL_REG(i32 %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %98

25:                                               ; preds = %13
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @INSN_P(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %98

30:                                               ; preds = %25
  %31 = load i32*, i32** @use_entry, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call %struct.web_entry* @unionfind_root(i32* %34)
  store %struct.web_entry* %35, %struct.web_entry** %4, align 8
  %36 = load %struct.web_entry*, %struct.web_entry** %4, align 8
  %37 = call %struct.TYPE_2__* @ENTRY_EI(%struct.web_entry* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SIGN_EXTENDED_DEF, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %30
  %43 = load %struct.web_entry*, %struct.web_entry** %4, align 8
  %44 = call %struct.TYPE_2__* @ENTRY_EI(%struct.web_entry* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ZERO_EXTENDED_DEF, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %98

50:                                               ; preds = %42, %30
  %51 = load %struct.web_entry*, %struct.web_entry** %4, align 8
  %52 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.web_entry*, %struct.web_entry** %4, align 8
  %57 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @rtx_equal_p(i32* %58, i32* %59)
  %61 = call i32 @gcc_assert(i32 %60)
  br label %66

62:                                               ; preds = %50
  %63 = load i32*, i32** %3, align 8
  %64 = load %struct.web_entry*, %struct.web_entry** %4, align 8
  %65 = getelementptr inbounds %struct.web_entry, %struct.web_entry* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  br label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.web_entry*, %struct.web_entry** %4, align 8
  %68 = call %struct.TYPE_2__* @ENTRY_EI(%struct.web_entry* %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SIGN_EXTENDED_DEF, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @SIGN_EXTEND, align 4
  store i32 %74, i32* %8, align 4
  br label %77

75:                                               ; preds = %66
  %76 = load i32, i32* @ZERO_EXTEND, align 4
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.web_entry*, %struct.web_entry** %4, align 8
  %81 = call %struct.TYPE_2__* @ENTRY_EI(%struct.web_entry* %80)
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32* @see_gen_normalized_extension(i32* %78, i32 %79, i32 %83)
  store i32* %84, i32** %5, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  store i32 -1, i32* %1, align 4
  br label %103

88:                                               ; preds = %77
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = load i32*, i32** %2, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* @USE_EXTENSION, align 4
  %94 = call i32 @see_store_reference_and_extension(i32* %91, i32* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  store i32 -1, i32* %1, align 4
  br label %103

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %49, %29, %24
  %99 = load i32, i32* %6, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %9

101:                                              ; preds = %9
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %1, align 4
  br label %103

103:                                              ; preds = %101, %96, %87
  %104 = load i32, i32* %1, align 4
  ret i32 %104
}

declare dso_local i32* @DF_REF_INSN(i32) #1

declare dso_local i32 @DF_USES_GET(i32, i32) #1

declare dso_local i32* @DF_REF_REAL_REG(i32) #1

declare dso_local i32 @INSN_P(i32*) #1

declare dso_local %struct.web_entry* @unionfind_root(i32*) #1

declare dso_local %struct.TYPE_2__* @ENTRY_EI(%struct.web_entry*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @rtx_equal_p(i32*, i32*) #1

declare dso_local i32* @see_gen_normalized_extension(i32*, i32, i32) #1

declare dso_local i32 @see_store_reference_and_extension(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
