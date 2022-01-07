; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_dump_coff_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_section = type { i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [57 x i8] c"section %s %d %d address %x size %x number %d nrelocs %d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"(%x %s %x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_section*)* @dump_coff_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_coff_section(%struct.coff_section* %0) #0 {
  %2 = alloca %struct.coff_section*, align 8
  %3 = alloca i32, align 4
  store %struct.coff_section* %0, %struct.coff_section** %2, align 8
  %4 = call i32 @tab(i32 1)
  %5 = load %struct.coff_section*, %struct.coff_section** %2, align 8
  %6 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.coff_section*, %struct.coff_section** %2, align 8
  %9 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.coff_section*, %struct.coff_section** %2, align 8
  %12 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.coff_section*, %struct.coff_section** %2, align 8
  %15 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.coff_section*, %struct.coff_section** %2, align 8
  %18 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.coff_section*, %struct.coff_section** %2, align 8
  %21 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.coff_section*, %struct.coff_section** %2, align 8
  %24 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %10, i32 %13, i32 %16, i32 %19, i32 %22, i32 %25)
  %27 = call i32 (...) @nl()
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %64, %1
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.coff_section*, %struct.coff_section** %2, align 8
  %31 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %28
  %35 = call i32 @tab(i32 0)
  %36 = load %struct.coff_section*, %struct.coff_section** %2, align 8
  %37 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %36, i32 0, i32 7
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.coff_section*, %struct.coff_section** %2, align 8
  %45 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %44, i32 0, i32 7
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.coff_section*, %struct.coff_section** %2, align 8
  %55 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %54, i32 0, i32 7
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8* %53, i32 %61)
  %63 = call i32 (...) @nl()
  br label %64

64:                                               ; preds = %34
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %28

67:                                               ; preds = %28
  %68 = call i32 @tab(i32 -1)
  ret void
}

declare dso_local i32 @tab(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
