; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_elf_fdpic.c_is_elf_fdpic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_binfmt_elf_fdpic.c_is_elf_fdpic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfhdr = type { i64, i32 }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ELFMAG = common dso_local global i32 0, align 4
@SELFMAG = common dso_local global i32 0, align 4
@ET_EXEC = common dso_local global i64 0, align 8
@ET_DYN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elfhdr*, %struct.file*)* @is_elf_fdpic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_elf_fdpic(%struct.elfhdr* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elfhdr*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.elfhdr* %0, %struct.elfhdr** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %7 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ELFMAG, align 4
  %10 = load i32, i32* @SELFMAG, align 4
  %11 = call i64 @memcmp(i32 %8, i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %16 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ET_EXEC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %22 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ET_DYN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %50

27:                                               ; preds = %20, %14
  %28 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %29 = call i32 @elf_check_arch(%struct.elfhdr* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %33 = call i32 @elf_check_fdpic(%struct.elfhdr* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %27
  store i32 0, i32* %3, align 4
  br label %50

36:                                               ; preds = %31
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.file*, %struct.file** %5, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41, %36
  store i32 0, i32* %3, align 4
  br label %50

49:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %35, %26, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @elf_check_arch(%struct.elfhdr*) #1

declare dso_local i32 @elf_check_fdpic(%struct.elfhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
