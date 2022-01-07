; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_ntp/extr_snmp_ntp.c_val_parse_ts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_ntp/extr_snmp_ntp.c_val_parse_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%x.%x%n\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%d.%d%n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @val_parse_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @val_parse_ts(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = icmp ugt i64 %11, 2
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 48
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 120
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9, i32* %7)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = call i64 @strlen(i8* %35)
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %25
  store i32 0, i32* %3, align 4
  br label %94

39:                                               ; preds = %31
  br label %53

40:                                               ; preds = %19, %13, %2
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @sscanf(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32* %9, i32* %7)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 2
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %40
  store i32 0, i32* %3, align 4
  br label %94

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 24
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 %56, i8* %58, align 1
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 16
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 %61, i8* %63, align 1
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 8
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  store i8 %66, i8* %68, align 1
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 0
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  store i8 %71, i8* %73, align 1
  %74 = load i32, i32* %9, align 4
  %75 = ashr i32 %74, 24
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  store i8 %76, i8* %78, align 1
  %79 = load i32, i32* %9, align 4
  %80 = ashr i32 %79, 16
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 5
  store i8 %81, i8* %83, align 1
  %84 = load i32, i32* %9, align 4
  %85 = ashr i32 %84, 8
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 6
  store i8 %86, i8* %88, align 1
  %89 = load i32, i32* %9, align 4
  %90 = ashr i32 %89, 0
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 7
  store i8 %91, i8* %93, align 1
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %53, %51, %38
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
