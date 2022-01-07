; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_redefine_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_redefine_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@current_group = common dso_local global i32 0, align 4
@previous_group = common dso_local global i32 0, align 4
@TImode = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i64)* @redefine_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redefine_groups(i32* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %17, align 4
  %19 = call i32 (...) @rs6000_issue_rate()
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i64* @alloca(i32 %23)
  store i64* %24, i64** %18, align 8
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %34, %4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i64*, i64** %18, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %15, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %15, align 4
  br label %25

37:                                               ; preds = %25
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @get_next_active_insn(i64 %39, i64 %40)
  store i64 %41, i64* %10, align 8
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %161, %37
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @NULL_RTX, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %162

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %14, align 4
  %50 = load i64, i64* %10, align 8
  %51 = load i64*, i64** %18, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @rs6000_variable_issue(i32* %55, i32 %56, i64 %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* @current_group, align 4
  %62 = call i64 @insn_terminates_group_p(i64 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @get_next_active_insn(i64 %66, i64 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @NULL_RTX, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %164

75:                                               ; preds = %65
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @is_branch_slot_insn(i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %13, align 4
  %87 = icmp sle i32 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i64, i64* %11, align 8
  %90 = call i64 @is_cracked_insn(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i64, i64* %11, align 8
  %98 = load i32, i32* @previous_group, align 4
  %99 = call i64 @insn_terminates_group_p(i64 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %96, %92
  %102 = phi i1 [ false, %92 ], [ %100, %96 ]
  br label %103

103:                                              ; preds = %101, %88, %81, %75
  %104 = phi i1 [ true, %88 ], [ true, %81 ], [ true, %75 ], [ %102, %101 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i64*, i64** %18, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @force_new_group(i32 %106, i32* %107, i64* %108, i64 %109, i32* %16, i32 %110, i32* %17)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %103
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %117

117:                                              ; preds = %126, %114
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i64*, i64** %18, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  br label %117

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129, %103
  %131 = load i64, i64* %11, align 8
  %132 = call i64 @GET_MODE(i64 %131)
  %133 = load i64, i64* @TImode, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* @VOIDmode, align 8
  %141 = call i32 @PUT_MODE(i64 %139, i64 %140)
  br label %155

142:                                              ; preds = %135, %130
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = load i64, i64* %11, align 8
  %147 = call i64 @GET_MODE(i64 %146)
  %148 = load i64, i64* @TImode, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* @TImode, align 8
  %153 = call i32 @PUT_MODE(i64 %151, i64 %152)
  br label %154

154:                                              ; preds = %150, %145, %142
  br label %155

155:                                              ; preds = %154, %138
  %156 = load i64, i64* %11, align 8
  store i64 %156, i64* %10, align 8
  %157 = load i32, i32* %13, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %13, align 4
  br label %161

161:                                              ; preds = %159, %155
  br label %42

162:                                              ; preds = %42
  %163 = load i32, i32* %17, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %162, %72
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @rs6000_issue_rate(...) #1

declare dso_local i64* @alloca(i32) #1

declare dso_local i64 @get_next_active_insn(i64, i64) #1

declare dso_local i32 @rs6000_variable_issue(i32*, i32, i64, i32) #1

declare dso_local i64 @insn_terminates_group_p(i64, i32) #1

declare dso_local i32 @is_branch_slot_insn(i64) #1

declare dso_local i64 @is_cracked_insn(i64) #1

declare dso_local i32 @force_new_group(i32, i32*, i64*, i64, i32*, i32, i32*) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @PUT_MODE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
