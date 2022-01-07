; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_add_marker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_add_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i8**, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s\09%s\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*, i8*, i8*)* @add_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_marker(%struct.module* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.module*, %struct.module** %4, align 8
  %10 = getelementptr inbounds %struct.module, %struct.module* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %11, i8* %12)
  %14 = load i8*, i8** %7, align 8
  %15 = call i8** @NOFAIL(i8* %14)
  %16 = load %struct.module*, %struct.module** %4, align 8
  %17 = getelementptr inbounds %struct.module, %struct.module* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = load %struct.module*, %struct.module** %4, align 8
  %20 = getelementptr inbounds %struct.module, %struct.module* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i8* @realloc(i8** %18, i32 %25)
  %27 = call i8** @NOFAIL(i8* %26)
  %28 = load %struct.module*, %struct.module** %4, align 8
  %29 = getelementptr inbounds %struct.module, %struct.module* %28, i32 0, i32 0
  store i8** %27, i8*** %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.module*, %struct.module** %4, align 8
  %32 = getelementptr inbounds %struct.module, %struct.module* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = load %struct.module*, %struct.module** %4, align 8
  %35 = getelementptr inbounds %struct.module, %struct.module* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8*, i8** %33, i64 %38
  store i8* %30, i8** %39, align 8
  ret void
}

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32, i8*) #1

declare dso_local i8** @NOFAIL(i8*) #1

declare dso_local i8* @realloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
