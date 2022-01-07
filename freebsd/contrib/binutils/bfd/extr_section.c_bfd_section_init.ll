; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_section.c_bfd_section_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_section.c_bfd_section_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i32 }

@bfd_section_init.section_id = internal global i32 16, align 4
@_new_section_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_10__*, %struct.TYPE_11__*)* @bfd_section_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @bfd_section_init(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %6 = load i32, i32* @bfd_section_init.section_id, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %16, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = load i32, i32* @_new_section_hook, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = bitcast %struct.TYPE_11__* %20 to %struct.TYPE_10__*
  %22 = call i32 @BFD_SEND(%struct.TYPE_10__* %17, i32 %18, %struct.TYPE_10__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %36

25:                                               ; preds = %2
  %26 = load i32, i32* @bfd_section_init.section_id, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @bfd_section_init.section_id, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = call i32 @bfd_section_list_append(%struct.TYPE_10__* %32, %struct.TYPE_11__* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %3, align 8
  br label %36

36:                                               ; preds = %25, %24
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %37
}

declare dso_local i32 @BFD_SEND(%struct.TYPE_10__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @bfd_section_list_append(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
