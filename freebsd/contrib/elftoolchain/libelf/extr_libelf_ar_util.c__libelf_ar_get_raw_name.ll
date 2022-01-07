; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar_util.c__libelf_ar_get_raw_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_ar_util.c__libelf_ar_get_raw_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_hdr = type { i32 }

@RESOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_libelf_ar_get_raw_name(%struct.ar_hdr* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ar_hdr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.ar_hdr* %0, %struct.ar_hdr** %3, align 8
  store i64 4, i64* %5, align 8
  %6 = call i8* @malloc(i64 5)
  store i8* %6, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @RESOURCE, align 4
  %10 = call i32 @LIBELF_SET_ERROR(i32 %9, i32 0)
  store i8* null, i8** %2, align 8
  br label %20

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.ar_hdr*, %struct.ar_hdr** %3, align 8
  %14 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strncpy(i8* %12, i32 %15, i64 4)
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 4
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %2, align 8
  br label %20

20:                                               ; preds = %11, %8
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
