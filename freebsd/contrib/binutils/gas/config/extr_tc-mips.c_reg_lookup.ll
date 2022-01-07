; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_reg_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_reg_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_section = common dso_local global i64 0, align 8
@RNUM_MASK = common dso_local global i32 0, align 4
@RTYPE_VEC = common dso_local global i32 0, align 4
@RTYPE_GP = common dso_local global i32 0, align 4
@itbl_have_entries = common dso_local global i64 0, align 8
@RWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unrecognized register name `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32*)* @reg_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_lookup(i8** %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %10, align 4
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @is_name_beginner(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %20, %3
  br label %24

24:                                               ; preds = %29, %23
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @is_part_of_name(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  br label %24

32:                                               ; preds = %24
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %9, align 1
  %35 = load i8*, i8** %8, align 8
  store i8 0, i8* %35, align 1
  %36 = load i8**, i8*** %4, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i32* @symbol_find(i8* %37)
  store i32* %38, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %74

40:                                               ; preds = %32
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @S_GET_SEGMENT(i32* %41)
  %43 = load i64, i64* @reg_section, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @S_GET_VALUE(i32* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @RNUM_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %10, align 4
  br label %73

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @RTYPE_VEC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, -2
  %64 = load i32, i32* @RTYPE_GP, align 4
  %65 = or i32 %64, 2
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @RNUM_MASK, align 4
  %70 = and i32 %68, %69
  %71 = sub nsw i32 %70, 2
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %67, %61, %56
  br label %73

73:                                               ; preds = %72, %52
  br label %104

74:                                               ; preds = %40, %32
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @RTYPE_GP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %74
  %80 = load i64, i64* @itbl_have_entries, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  %83 = load i8**, i8*** %4, align 8
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 36
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i8*, i8** %12, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %12, align 8
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i8*, i8** %12, align 8
  %94 = call i64 @itbl_get_reg_val(i8* %93, i64* %13)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i64, i64* %13, align 8
  %98 = load i32, i32* @RNUM_MASK, align 4
  %99 = sext i32 %98 to i64
  %100 = and i64 %97, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %96, %92
  br label %103

103:                                              ; preds = %102, %79, %74
  br label %104

104:                                              ; preds = %103, %73
  %105 = load i32, i32* %10, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** %8, align 8
  %109 = load i8**, i8*** %4, align 8
  store i8* %108, i8** %109, align 8
  br label %120

110:                                              ; preds = %104
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @RWARN, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i8**, i8*** %4, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @as_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %115, %110
  br label %120

120:                                              ; preds = %119, %107
  %121 = load i8, i8* %9, align 1
  %122 = load i8*, i8** %8, align 8
  store i8 %121, i8* %122, align 1
  %123 = load i32*, i32** %6, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = load i32*, i32** %6, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* %10, align 4
  %130 = icmp sge i32 %129, 0
  %131 = zext i1 %130 to i32
  ret i32 %131
}

declare dso_local i64 @is_name_beginner(i8 signext) #1

declare dso_local i64 @is_part_of_name(i8 signext) #1

declare dso_local i32* @symbol_find(i8*) #1

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local i32 @S_GET_VALUE(i32*) #1

declare dso_local i64 @itbl_get_reg_val(i8*, i64*) #1

declare dso_local i32 @as_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
