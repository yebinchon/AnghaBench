; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_geneoltbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_gen.c_geneoltbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"m4_ifdef( [[M4_YY_USE_LINENO]],[[\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"/* Table of booleans, true if rule could match eol. */\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"yy_rule_can_match_eol\00", align 1
@num_rules = common dso_local global i32 0, align 4
@gentables = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@rule_has_nl = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"    };\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"]])\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @geneoltbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geneoltbl() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @outn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @outn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (...) @get_int32_decl()
  %5 = load i32, i32* @num_rules, align 4
  %6 = add nsw i32 %5, 1
  %7 = call i32 @out_str_dec(i32 %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %6)
  %8 = load i64, i64* @gentables, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %11

11:                                               ; preds = %31, %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @num_rules, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load i64*, i64** @rule_has_nl, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = call i32 @out_dec(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = srem i32 %25, 20
  %27 = icmp eq i32 %26, 19
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = call i32 @out(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %11

34:                                               ; preds = %11
  %35 = call i32 @out(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %0
  %37 = call i32 @outn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @outn(i8*) #1

declare dso_local i32 @out_str_dec(i32, i8*, i32) #1

declare dso_local i32 @get_int32_decl(...) #1

declare dso_local i32 @out_dec(i8*, i32) #1

declare dso_local i32 @out(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
