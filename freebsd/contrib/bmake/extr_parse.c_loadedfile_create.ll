; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_loadedfile_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_parse.c_loadedfile_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loadedfile = type { i8*, i32, i64, i64, i32* }

@.str = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.loadedfile* (i8*)* @loadedfile_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.loadedfile* @loadedfile_create(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.loadedfile*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.loadedfile* @bmake_malloc(i32 40)
  store %struct.loadedfile* %4, %struct.loadedfile** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %10

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %7 ], [ %9, %8 ]
  %12 = load %struct.loadedfile*, %struct.loadedfile** %3, align 8
  %13 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.loadedfile*, %struct.loadedfile** %3, align 8
  %15 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.loadedfile*, %struct.loadedfile** %3, align 8
  %17 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.loadedfile*, %struct.loadedfile** %3, align 8
  %19 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = load %struct.loadedfile*, %struct.loadedfile** %3, align 8
  %22 = getelementptr inbounds %struct.loadedfile, %struct.loadedfile* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.loadedfile*, %struct.loadedfile** %3, align 8
  ret %struct.loadedfile* %23
}

declare dso_local %struct.loadedfile* @bmake_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
