; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_srcpos.c_dtc_open_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/extr_srcpos.c_dtc_open_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtc_file = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtc_file*, i8*, i8*)* @dtc_open_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtc_open_one(%struct.dtc_file* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dtc_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.dtc_file* %0, %struct.dtc_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = add nsw i64 %13, %15
  %17 = add nsw i64 %16, 2
  %18 = call i8* @xmalloc(i64 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strcpy(i8* %19, i8* %20)
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strcat(i8* %24, i8* %25)
  br label %30

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %27, %11
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @fopen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.dtc_file*, %struct.dtc_file** %5, align 8
  %34 = getelementptr inbounds %struct.dtc_file, %struct.dtc_file* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.dtc_file*, %struct.dtc_file** %5, align 8
  %36 = getelementptr inbounds %struct.dtc_file, %struct.dtc_file* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @free(i8* %40)
  store i32 0, i32* %4, align 4
  br label %46

42:                                               ; preds = %30
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.dtc_file*, %struct.dtc_file** %5, align 8
  %45 = getelementptr inbounds %struct.dtc_file, %struct.dtc_file* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
