; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_check_section_mismatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_check_section_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@NO_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.elf_info*, %struct.TYPE_11__*, %struct.TYPE_10__*, i8*)* @check_section_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_section_mismatch(i8* %0, %struct.elf_info* %1, %struct.TYPE_11__* %2, %struct.TYPE_10__* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.elf_info*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.elf_info* %1, %struct.elf_info** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load %struct.elf_info*, %struct.elf_info** %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @sec_name(%struct.elf_info* %17, i32 %20)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @section_mismatch(i8* %22, i8* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @NO_MISMATCH, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %5
  %29 = load %struct.elf_info*, %struct.elf_info** %7, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = call %struct.TYPE_10__* @find_elf_symbol2(%struct.elf_info* %29, i32 %32, i8* %33)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %14, align 8
  %35 = load %struct.elf_info*, %struct.elf_info** %7, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %37 = call i8* @sym_name(%struct.elf_info* %35, %struct.TYPE_10__* %36)
  store i8* %37, i8** %16, align 8
  %38 = load %struct.elf_info*, %struct.elf_info** %7, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = call %struct.TYPE_10__* @find_elf_symbol(%struct.elf_info* %38, i32 %41, %struct.TYPE_10__* %42)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %13, align 8
  %44 = load %struct.elf_info*, %struct.elf_info** %7, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %46 = call i8* @sym_name(%struct.elf_info* %44, %struct.TYPE_10__* %45)
  store i8* %46, i8** %15, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = call i64 @secref_whitelist(i8* %47, i8* %48, i8* %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %28
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %16, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %62 = call i32 @is_function(%struct.TYPE_10__* %61)
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %66 = call i32 @is_function(%struct.TYPE_10__* %65)
  %67 = call i32 @report_sec_mismatch(i8* %54, i32 %55, i8* %56, i32 %59, i8* %60, i32 %62, i8* %63, i8* %64, i32 %66)
  br label %68

68:                                               ; preds = %53, %28
  br label %69

69:                                               ; preds = %68, %5
  ret void
}

declare dso_local i8* @sec_name(%struct.elf_info*, i32) #1

declare dso_local i32 @section_mismatch(i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @find_elf_symbol2(%struct.elf_info*, i32, i8*) #1

declare dso_local i8* @sym_name(%struct.elf_info*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @find_elf_symbol(%struct.elf_info*, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @secref_whitelist(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @report_sec_mismatch(i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @is_function(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
