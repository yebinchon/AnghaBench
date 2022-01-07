; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_check_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_check_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@macro_mri = common dso_local global i32 0, align 4
@macro_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_macro(i8* %0, i32* %1, i8** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i32 @is_name_beginner(i8 signext %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @macro_mri, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 46
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %19
  store i32 0, i32* %5, align 4
  br label %134

28:                                               ; preds = %22, %4
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %36, %28
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @is_part_of_name(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %10, align 8
  br label %31

39:                                               ; preds = %31
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @is_name_ender(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = add nsw i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i64 @alloca(i32 %54)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(i8* %57, i8* %58, i32 %64)
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = getelementptr inbounds i8, i8* %66, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %11, align 8
  store i8* %73, i8** %12, align 8
  br label %74

74:                                               ; preds = %84, %47
  %75 = load i8*, i8** %12, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i8*, i8** %12, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call signext i8 @TOLOWER(i8 signext %81)
  %83 = load i8*, i8** %12, align 8
  store i8 %82, i8* %83, align 1
  br label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %12, align 8
  br label %74

87:                                               ; preds = %74
  %88 = load i32, i32* @macro_hash, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = call i64 @hash_find(i32 %88, i8* %89)
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** %13, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %134

95:                                               ; preds = %87
  %96 = call i32 @sb_new(i32* %14)
  br label %97

97:                                               ; preds = %114, %95
  %98 = load i8*, i8** %10, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load i8*, i8** %10, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 10
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** %10, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 13
  br label %112

112:                                              ; preds = %107, %102, %97
  %113 = phi i1 [ false, %102 ], [ false, %97 ], [ %111, %107 ]
  br i1 %113, label %114, label %120

114:                                              ; preds = %112
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %10, align 8
  %117 = load i8, i8* %115, align 1
  %118 = sext i8 %117 to i32
  %119 = call i32 @sb_add_char(i32* %14, i32 %118)
  br label %97

120:                                              ; preds = %112
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @sb_new(i32* %121)
  %123 = load i32*, i32** %13, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = call i8* @macro_expand(i32 0, i32* %14, i32* %123, i32* %124)
  %126 = load i8**, i8*** %8, align 8
  store i8* %125, i8** %126, align 8
  %127 = call i32 @sb_kill(i32* %14)
  %128 = load i32**, i32*** %9, align 8
  %129 = icmp ne i32** %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %120
  %131 = load i32*, i32** %13, align 8
  %132 = load i32**, i32*** %9, align 8
  store i32* %131, i32** %132, align 8
  br label %133

133:                                              ; preds = %130, %120
  store i32 1, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %94, %27
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @is_name_beginner(i8 signext) #1

declare dso_local i64 @is_part_of_name(i8 signext) #1

declare dso_local i64 @is_name_ender(i8 signext) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

declare dso_local i64 @hash_find(i32, i8*) #1

declare dso_local i32 @sb_new(i32*) #1

declare dso_local i32 @sb_add_char(i32*, i32) #1

declare dso_local i8* @macro_expand(i32, i32*, i32*, i32*) #1

declare dso_local i32 @sb_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
