; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_init_ext_80387_constants.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_init_ext_80387_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_ext_80387_constants.cst = internal global [5 x i8*] [i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [40 x i8] c"0.3010299956639811952256464283594894482\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"0.6931471805599453094286904741849753009\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"1.4426950408889634073876517827983434472\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"3.3219280948873623478083405569094566090\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"3.1415926535897932385128089594061862044\00", align 1
@ext_80387_constants_table = common dso_local global i32* null, align 8
@XFmode = common dso_local global i32 0, align 4
@ext_80387_constants_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_ext_80387_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ext_80387_constants() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %25, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 5
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = load i32*, i32** @ext_80387_constants_table, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* @init_ext_80387_constants.cst, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @real_from_string(i32* %9, i8* %13)
  %15 = load i32*, i32** @ext_80387_constants_table, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* @XFmode, align 4
  %20 = load i32*, i32** @ext_80387_constants_table, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @real_convert(i32* %18, i32 %19, i32* %23)
  br label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %2

28:                                               ; preds = %2
  store i32 1, i32* @ext_80387_constants_init, align 4
  ret void
}

declare dso_local i32 @real_from_string(i32*, i8*) #1

declare dso_local i32 @real_convert(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
