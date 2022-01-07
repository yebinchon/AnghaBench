; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_find_section_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_find_section_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_list = type { i8*, %struct.section_list*, i64, i8*, i64, i64, i8*, i8*, i8*, i8*, i8* }

@change_sections = common dso_local global %struct.section_list* null, align 8
@FALSE = common dso_local global i8* null, align 8
@CHANGE_IGNORE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.section_list* (i8*, i32)* @find_section_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.section_list* @find_section_list(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.section_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.section_list*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.section_list*, %struct.section_list** @change_sections, align 8
  store %struct.section_list* %7, %struct.section_list** %6, align 8
  br label %8

8:                                                ; preds = %21, %2
  %9 = load %struct.section_list*, %struct.section_list** %6, align 8
  %10 = icmp ne %struct.section_list* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load %struct.section_list*, %struct.section_list** %6, align 8
  %13 = getelementptr inbounds %struct.section_list, %struct.section_list* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strcmp(i8* %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load %struct.section_list*, %struct.section_list** %6, align 8
  store %struct.section_list* %19, %struct.section_list** %3, align 8
  br label %63

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.section_list*, %struct.section_list** %6, align 8
  %23 = getelementptr inbounds %struct.section_list, %struct.section_list* %22, i32 0, i32 1
  %24 = load %struct.section_list*, %struct.section_list** %23, align 8
  store %struct.section_list* %24, %struct.section_list** %6, align 8
  br label %8

25:                                               ; preds = %8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store %struct.section_list* null, %struct.section_list** %3, align 8
  br label %63

29:                                               ; preds = %25
  %30 = call %struct.section_list* @xmalloc(i32 88)
  store %struct.section_list* %30, %struct.section_list** %6, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.section_list*, %struct.section_list** %6, align 8
  %33 = getelementptr inbounds %struct.section_list, %struct.section_list* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @FALSE, align 8
  %35 = load %struct.section_list*, %struct.section_list** %6, align 8
  %36 = getelementptr inbounds %struct.section_list, %struct.section_list* %35, i32 0, i32 10
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @FALSE, align 8
  %38 = load %struct.section_list*, %struct.section_list** %6, align 8
  %39 = getelementptr inbounds %struct.section_list, %struct.section_list* %38, i32 0, i32 9
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @FALSE, align 8
  %41 = load %struct.section_list*, %struct.section_list** %6, align 8
  %42 = getelementptr inbounds %struct.section_list, %struct.section_list* %41, i32 0, i32 8
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @CHANGE_IGNORE, align 8
  %44 = load %struct.section_list*, %struct.section_list** %6, align 8
  %45 = getelementptr inbounds %struct.section_list, %struct.section_list* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @CHANGE_IGNORE, align 8
  %47 = load %struct.section_list*, %struct.section_list** %6, align 8
  %48 = getelementptr inbounds %struct.section_list, %struct.section_list* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.section_list*, %struct.section_list** %6, align 8
  %50 = getelementptr inbounds %struct.section_list, %struct.section_list* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.section_list*, %struct.section_list** %6, align 8
  %52 = getelementptr inbounds %struct.section_list, %struct.section_list* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load i8*, i8** @FALSE, align 8
  %54 = load %struct.section_list*, %struct.section_list** %6, align 8
  %55 = getelementptr inbounds %struct.section_list, %struct.section_list* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.section_list*, %struct.section_list** %6, align 8
  %57 = getelementptr inbounds %struct.section_list, %struct.section_list* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.section_list*, %struct.section_list** @change_sections, align 8
  %59 = load %struct.section_list*, %struct.section_list** %6, align 8
  %60 = getelementptr inbounds %struct.section_list, %struct.section_list* %59, i32 0, i32 1
  store %struct.section_list* %58, %struct.section_list** %60, align 8
  %61 = load %struct.section_list*, %struct.section_list** %6, align 8
  store %struct.section_list* %61, %struct.section_list** @change_sections, align 8
  %62 = load %struct.section_list*, %struct.section_list** %6, align 8
  store %struct.section_list* %62, %struct.section_list** %3, align 8
  br label %63

63:                                               ; preds = %29, %28, %18
  %64 = load %struct.section_list*, %struct.section_list** %3, align 8
  ret %struct.section_list* %64
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.section_list* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
