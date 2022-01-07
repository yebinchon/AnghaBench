; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_check_section_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_check_section_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i8*, i8* }
%struct.section = type { i8*, i8*, i64, i64 }
%struct.sec_action = type { i8*, i64 }

@.str = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c".shstrtab\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, %struct.section*)* @check_section_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_section_rename(%struct.elfcopy* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.sec_action*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %8 = load %struct.section*, %struct.section** %4, align 8
  %9 = getelementptr inbounds %struct.section, %struct.section* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %111

13:                                               ; preds = %2
  %14 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %15 = load %struct.section*, %struct.section** %4, align 8
  %16 = getelementptr inbounds %struct.section, %struct.section* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call %struct.sec_action* @lookup_sec_act(%struct.elfcopy* %14, i8* %17, i32 0)
  store %struct.sec_action* %18, %struct.sec_action** %5, align 8
  %19 = load %struct.sec_action*, %struct.sec_action** %5, align 8
  %20 = icmp ne %struct.sec_action* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load %struct.sec_action*, %struct.sec_action** %5, align 8
  %23 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.sec_action*, %struct.sec_action** %5, align 8
  %28 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.section*, %struct.section** %4, align 8
  %31 = getelementptr inbounds %struct.section, %struct.section* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %26, %21, %13
  %33 = load %struct.section*, %struct.section** %4, align 8
  %34 = getelementptr inbounds %struct.section, %struct.section* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.section*, %struct.section** %4, align 8
  %40 = getelementptr inbounds %struct.section, %struct.section* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.section*, %struct.section** %4, align 8
  %46 = getelementptr inbounds %struct.section, %struct.section* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44, %38, %32
  br label %111

51:                                               ; preds = %44
  store i8* null, i8** %6, align 8
  %52 = load %struct.section*, %struct.section** %4, align 8
  %53 = getelementptr inbounds %struct.section, %struct.section* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %58 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %63 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %6, align 8
  br label %75

65:                                               ; preds = %56, %51
  %66 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %67 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %72 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %70, %65
  br label %75

75:                                               ; preds = %74, %61
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %111

78:                                               ; preds = %75
  %79 = load %struct.section*, %struct.section** %4, align 8
  %80 = getelementptr inbounds %struct.section, %struct.section* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = add nsw i32 %82, %84
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i8* @malloc(i64 %88)
  %90 = load %struct.section*, %struct.section** %4, align 8
  %91 = getelementptr inbounds %struct.section, %struct.section* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = icmp eq i8* %89, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load i32, i32* @EXIT_FAILURE, align 4
  %95 = call i32 @err(i32 %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %78
  %97 = load %struct.section*, %struct.section** %4, align 8
  %98 = getelementptr inbounds %struct.section, %struct.section* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load %struct.section*, %struct.section** %4, align 8
  %103 = getelementptr inbounds %struct.section, %struct.section* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @snprintf(i8* %99, i64 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %101, i8* %104)
  %106 = load %struct.section*, %struct.section** %4, align 8
  %107 = getelementptr inbounds %struct.section, %struct.section* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.section*, %struct.section** %4, align 8
  %110 = getelementptr inbounds %struct.section, %struct.section* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %12, %50, %96, %75
  ret void
}

declare dso_local %struct.sec_action* @lookup_sec_act(%struct.elfcopy*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
