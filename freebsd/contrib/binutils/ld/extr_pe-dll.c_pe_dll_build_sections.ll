; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pe_dll_build_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pe_dll_build_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.bfd_link_info = type { i32 }

@pe_def_file = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pe_dll_build_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @bfd_get_target(i32* %5)
  %7 = call i32 @pe_dll_id_target(i32 %6)
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %10 = call i32 @process_def_file(i32* %8, %struct.bfd_link_info* %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pe_def_file, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %17 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %26

21:                                               ; preds = %15, %2
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %24 = call i32 @generate_edata(i32* %22, %struct.bfd_link_info* %23)
  %25 = call i32 @build_filler_bfd(i32 1)
  br label %26

26:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @pe_dll_id_target(i32) #1

declare dso_local i32 @bfd_get_target(i32*) #1

declare dso_local i32 @process_def_file(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @generate_edata(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @build_filler_bfd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
