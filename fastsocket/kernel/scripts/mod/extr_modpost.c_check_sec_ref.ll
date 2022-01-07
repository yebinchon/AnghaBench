; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_check_sec_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_check_sec_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.elf_info = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@SHT_RELA = common dso_local global i64 0, align 8
@SHT_REL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*, i8*, %struct.elf_info*)* @check_sec_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_sec_ref(%struct.module* %0, i8* %1, %struct.elf_info* %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.elf_info* %2, %struct.elf_info** %6, align 8
  %9 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %10 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %69, %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %15 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %72

20:                                               ; preds = %12
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %23 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %24 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  %29 = call i32 @check_section(i8* %21, %struct.elf_info* %22, %struct.TYPE_7__* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SHT_RELA, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %20
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %41 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %42 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = call i32 @section_rela(i8* %39, %struct.elf_info* %40, %struct.TYPE_7__* %46)
  br label %68

48:                                               ; preds = %20
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SHT_REL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %60 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %61 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = call i32 @section_rel(i8* %58, %struct.elf_info* %59, %struct.TYPE_7__* %65)
  br label %67

67:                                               ; preds = %57, %48
  br label %68

68:                                               ; preds = %67, %38
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %12

72:                                               ; preds = %12
  ret void
}

declare dso_local i32 @check_section(i8*, %struct.elf_info*, %struct.TYPE_7__*) #1

declare dso_local i32 @section_rela(i8*, %struct.elf_info*, %struct.TYPE_7__*) #1

declare dso_local i32 @section_rel(i8*, %struct.elf_info*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
