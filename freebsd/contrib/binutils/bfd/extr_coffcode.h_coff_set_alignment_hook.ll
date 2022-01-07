; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffcode.h_coff_set_alignment_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffcode.h_coff_set_alignment_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.internal_scnhdr = type { i32, i32, i32, i64 }

@STYP_OVRFLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*, i8*)* @coff_set_alignment_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_set_alignment_hook(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.internal_scnhdr*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.internal_scnhdr*
  store %struct.internal_scnhdr* %10, %struct.internal_scnhdr** %7, align 8
  %11 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %12 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @STYP_OVRFLO, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %51

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %21 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call %struct.TYPE_12__* @coff_section_from_bfd_index(%struct.TYPE_11__* %19, i32 %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = icmp eq %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %51

28:                                               ; preds = %18
  %29 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %30 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.internal_scnhdr*, %struct.internal_scnhdr** %7, align 8
  %35 = getelementptr inbounds %struct.internal_scnhdr, %struct.internal_scnhdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = call i32 @bfd_section_removed_from_list(%struct.TYPE_11__* %39, %struct.TYPE_12__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %28
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = call i32 @bfd_section_list_remove(%struct.TYPE_11__* %44, %struct.TYPE_12__* %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %17, %27, %43, %28
  ret void
}

declare dso_local %struct.TYPE_12__* @coff_section_from_bfd_index(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @bfd_section_removed_from_list(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @bfd_section_list_remove(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
