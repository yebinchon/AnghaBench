; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmodule = type { i8* }

@token = common dso_local global i64 0, align 8
@TOK_STR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"expecting section name\00", align 1
@strval = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"snmpd\00", align 1
@ignore = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lmodule*)* @parse_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_section(%struct.lmodule* %0) #0 {
  %2 = alloca %struct.lmodule*, align 8
  store %struct.lmodule* %0, %struct.lmodule** %2, align 8
  %3 = load i64, i64* @token, align 8
  %4 = load i64, i64* @TOK_STR, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* @strval, align 4
  %10 = call i64 @strcmp(i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load %struct.lmodule*, %struct.lmodule** %2, align 8
  %14 = icmp ne %struct.lmodule* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* @ignore, align 4
  br label %17

16:                                               ; preds = %12
  store i32 0, i32* @ignore, align 4
  br label %17

17:                                               ; preds = %16, %15
  br label %31

18:                                               ; preds = %8
  %19 = load %struct.lmodule*, %struct.lmodule** %2, align 8
  %20 = icmp eq %struct.lmodule* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* @ignore, align 4
  br label %30

22:                                               ; preds = %18
  %23 = load i32, i32* @strval, align 4
  %24 = load %struct.lmodule*, %struct.lmodule** %2, align 8
  %25 = getelementptr inbounds %struct.lmodule, %struct.lmodule* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i32 %23, i8* %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* @ignore, align 4
  br label %30

30:                                               ; preds = %22, %21
  br label %31

31:                                               ; preds = %30, %17
  %32 = call i32 (...) @gettoken()
  ret void
}

declare dso_local i32 @report(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @gettoken(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
