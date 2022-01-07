; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_got_entry_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_score_elf_got_entry_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.score_got_entry = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @score_elf_got_entry_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_elf_got_entry_eq(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.score_got_entry*, align 8
  %6 = alloca %struct.score_got_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.score_got_entry*
  store %struct.score_got_entry* %8, %struct.score_got_entry** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.score_got_entry*
  store %struct.score_got_entry* %10, %struct.score_got_entry** %6, align 8
  %11 = load %struct.score_got_entry*, %struct.score_got_entry** %5, align 8
  %12 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %15 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %2
  %19 = load %struct.score_got_entry*, %struct.score_got_entry** %5, align 8
  %20 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %23 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %18
  %27 = load %struct.score_got_entry*, %struct.score_got_entry** %5, align 8
  %28 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = load %struct.score_got_entry*, %struct.score_got_entry** %5, align 8
  %33 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %37 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %35, %39
  %41 = zext i1 %40 to i32
  br label %71

42:                                               ; preds = %26
  %43 = load %struct.score_got_entry*, %struct.score_got_entry** %5, align 8
  %44 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.score_got_entry*, %struct.score_got_entry** %5, align 8
  %49 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %53 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %51, %55
  %57 = zext i1 %56 to i32
  br label %69

58:                                               ; preds = %42
  %59 = load %struct.score_got_entry*, %struct.score_got_entry** %5, align 8
  %60 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.score_got_entry*, %struct.score_got_entry** %6, align 8
  %64 = getelementptr inbounds %struct.score_got_entry, %struct.score_got_entry* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %62, %66
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %58, %47
  %70 = phi i32 [ %57, %47 ], [ %68, %58 ]
  br label %71

71:                                               ; preds = %69, %31
  %72 = phi i32 [ %41, %31 ], [ %70, %69 ]
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %71, %18, %2
  %75 = phi i1 [ false, %18 ], [ false, %2 ], [ %73, %71 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
