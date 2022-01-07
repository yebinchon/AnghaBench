; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c__bfd_get_elt_at_filepos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c__bfd_get_elt_at_filepos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.areltdata = type { i32, %struct.areltdata*, i64, %struct.areltdata* }

@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.areltdata* @_bfd_get_elt_at_filepos(%struct.areltdata* %0, i32 %1) #0 {
  %3 = alloca %struct.areltdata*, align 8
  %4 = alloca %struct.areltdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.areltdata*, align 8
  %7 = alloca %struct.areltdata*, align 8
  store %struct.areltdata* %0, %struct.areltdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  %9 = getelementptr inbounds %struct.areltdata, %struct.areltdata* %8, i32 0, i32 3
  %10 = load %struct.areltdata*, %struct.areltdata** %9, align 8
  %11 = icmp ne %struct.areltdata* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  %14 = getelementptr inbounds %struct.areltdata, %struct.areltdata* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  %21 = getelementptr inbounds %struct.areltdata, %struct.areltdata* %20, i32 0, i32 3
  %22 = load %struct.areltdata*, %struct.areltdata** %21, align 8
  store %struct.areltdata* %22, %struct.areltdata** %4, align 8
  br label %23

23:                                               ; preds = %12, %2
  %24 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.areltdata* @_bfd_look_for_bfd_in_cache(%struct.areltdata* %24, i32 %25)
  store %struct.areltdata* %26, %struct.areltdata** %7, align 8
  %27 = load %struct.areltdata*, %struct.areltdata** %7, align 8
  %28 = icmp ne %struct.areltdata* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.areltdata*, %struct.areltdata** %7, align 8
  store %struct.areltdata* %30, %struct.areltdata** %3, align 8
  br label %79

31:                                               ; preds = %23
  %32 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SEEK_SET, align 4
  %35 = call i64 @bfd_seek(%struct.areltdata* %32, i32 %33, i32 %34)
  %36 = icmp sgt i64 0, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store %struct.areltdata* null, %struct.areltdata** %3, align 8
  br label %79

38:                                               ; preds = %31
  %39 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  %40 = call %struct.areltdata* @_bfd_read_ar_hdr(%struct.areltdata* %39)
  store %struct.areltdata* %40, %struct.areltdata** %6, align 8
  %41 = icmp eq %struct.areltdata* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.areltdata* null, %struct.areltdata** %3, align 8
  br label %79

43:                                               ; preds = %38
  %44 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  %45 = call %struct.areltdata* @_bfd_create_empty_archive_element_shell(%struct.areltdata* %44)
  store %struct.areltdata* %45, %struct.areltdata** %7, align 8
  %46 = load %struct.areltdata*, %struct.areltdata** %7, align 8
  %47 = icmp eq %struct.areltdata* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  %50 = load %struct.areltdata*, %struct.areltdata** %6, align 8
  %51 = call i32 @bfd_release(%struct.areltdata* %49, %struct.areltdata* %50)
  store %struct.areltdata* null, %struct.areltdata** %3, align 8
  br label %79

52:                                               ; preds = %43
  %53 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  %54 = call i64 @bfd_tell(%struct.areltdata* %53)
  %55 = load %struct.areltdata*, %struct.areltdata** %7, align 8
  %56 = getelementptr inbounds %struct.areltdata, %struct.areltdata* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.areltdata*, %struct.areltdata** %6, align 8
  %58 = load %struct.areltdata*, %struct.areltdata** %7, align 8
  %59 = getelementptr inbounds %struct.areltdata, %struct.areltdata* %58, i32 0, i32 1
  store %struct.areltdata* %57, %struct.areltdata** %59, align 8
  %60 = load %struct.areltdata*, %struct.areltdata** %6, align 8
  %61 = getelementptr inbounds %struct.areltdata, %struct.areltdata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.areltdata*, %struct.areltdata** %7, align 8
  %64 = getelementptr inbounds %struct.areltdata, %struct.areltdata* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.areltdata*, %struct.areltdata** %7, align 8
  %68 = call i64 @_bfd_add_bfd_to_archive_cache(%struct.areltdata* %65, i32 %66, %struct.areltdata* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %52
  %71 = load %struct.areltdata*, %struct.areltdata** %7, align 8
  store %struct.areltdata* %71, %struct.areltdata** %3, align 8
  br label %79

72:                                               ; preds = %52
  %73 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  %74 = load %struct.areltdata*, %struct.areltdata** %7, align 8
  %75 = call i32 @bfd_release(%struct.areltdata* %73, %struct.areltdata* %74)
  %76 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  %77 = load %struct.areltdata*, %struct.areltdata** %6, align 8
  %78 = call i32 @bfd_release(%struct.areltdata* %76, %struct.areltdata* %77)
  store %struct.areltdata* null, %struct.areltdata** %3, align 8
  br label %79

79:                                               ; preds = %72, %70, %48, %42, %37, %29
  %80 = load %struct.areltdata*, %struct.areltdata** %3, align 8
  ret %struct.areltdata* %80
}

declare dso_local %struct.areltdata* @_bfd_look_for_bfd_in_cache(%struct.areltdata*, i32) #1

declare dso_local i64 @bfd_seek(%struct.areltdata*, i32, i32) #1

declare dso_local %struct.areltdata* @_bfd_read_ar_hdr(%struct.areltdata*) #1

declare dso_local %struct.areltdata* @_bfd_create_empty_archive_element_shell(%struct.areltdata*) #1

declare dso_local i32 @bfd_release(%struct.areltdata*, %struct.areltdata*) #1

declare dso_local i64 @bfd_tell(%struct.areltdata*) #1

declare dso_local i64 @_bfd_add_bfd_to_archive_cache(%struct.areltdata*, i32, %struct.areltdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
