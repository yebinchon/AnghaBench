; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rdcoff.c_coff_get_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rdcoff.c_coff_get_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_types = type { %struct.coff_slots* }
%struct.coff_slots = type { i32*, %struct.coff_slots* }

@COFF_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.coff_types*, i32)* @coff_get_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @coff_get_slot(%struct.coff_types* %0, i32 %1) #0 {
  %3 = alloca %struct.coff_types*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.coff_slots**, align 8
  store %struct.coff_types* %0, %struct.coff_types** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.coff_types*, %struct.coff_types** %3, align 8
  %7 = getelementptr inbounds %struct.coff_types, %struct.coff_types* %6, i32 0, i32 0
  store %struct.coff_slots** %7, %struct.coff_slots*** %5, align 8
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @COFF_SLOTS, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.coff_slots**, %struct.coff_slots*** %5, align 8
  %14 = load %struct.coff_slots*, %struct.coff_slots** %13, align 8
  %15 = icmp eq %struct.coff_slots* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = call i64 @xmalloc(i32 16)
  %18 = inttoptr i64 %17 to %struct.coff_slots*
  %19 = load %struct.coff_slots**, %struct.coff_slots*** %5, align 8
  store %struct.coff_slots* %18, %struct.coff_slots** %19, align 8
  %20 = load %struct.coff_slots**, %struct.coff_slots*** %5, align 8
  %21 = load %struct.coff_slots*, %struct.coff_slots** %20, align 8
  %22 = call i32 @memset(%struct.coff_slots* %21, i32 0, i32 16)
  br label %23

23:                                               ; preds = %16, %12
  %24 = load %struct.coff_slots**, %struct.coff_slots*** %5, align 8
  %25 = load %struct.coff_slots*, %struct.coff_slots** %24, align 8
  %26 = getelementptr inbounds %struct.coff_slots, %struct.coff_slots* %25, i32 0, i32 1
  store %struct.coff_slots** %26, %struct.coff_slots*** %5, align 8
  %27 = load i32, i32* @COFF_SLOTS, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load %struct.coff_slots**, %struct.coff_slots*** %5, align 8
  %32 = load %struct.coff_slots*, %struct.coff_slots** %31, align 8
  %33 = icmp eq %struct.coff_slots* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = call i64 @xmalloc(i32 16)
  %36 = inttoptr i64 %35 to %struct.coff_slots*
  %37 = load %struct.coff_slots**, %struct.coff_slots*** %5, align 8
  store %struct.coff_slots* %36, %struct.coff_slots** %37, align 8
  %38 = load %struct.coff_slots**, %struct.coff_slots*** %5, align 8
  %39 = load %struct.coff_slots*, %struct.coff_slots** %38, align 8
  %40 = call i32 @memset(%struct.coff_slots* %39, i32 0, i32 16)
  br label %41

41:                                               ; preds = %34, %30
  %42 = load %struct.coff_slots**, %struct.coff_slots*** %5, align 8
  %43 = load %struct.coff_slots*, %struct.coff_slots** %42, align 8
  %44 = getelementptr inbounds %struct.coff_slots, %struct.coff_slots* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  ret i32* %48
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.coff_slots*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
