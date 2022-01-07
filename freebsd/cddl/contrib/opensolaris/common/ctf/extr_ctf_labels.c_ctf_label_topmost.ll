; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_labels.c_ctf_label_topmost.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_labels.c_ctf_label_topmost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CTF_ERR = common dso_local global i64 0, align 8
@ECTF_NOLABELDATA = common dso_local global i32 0, align 4
@ECTF_CORRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ctf_label_topmost(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @extract_label_info(i32* %7, %struct.TYPE_3__** %4, i64* %6)
  %9 = load i64, i64* @CTF_ERR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %35

12:                                               ; preds = %1
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @ECTF_NOLABELDATA, align 4
  %18 = call i32 @ctf_set_errno(i32* %16, i32 %17)
  store i8* null, i8** %2, align 8
  br label %35

19:                                               ; preds = %12
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 -1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @ctf_strraw(i32* %20, i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @ECTF_CORRUPT, align 4
  %32 = call i32 @ctf_set_errno(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %19
  %34 = load i8*, i8** %5, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %33, %15, %11
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i64 @extract_label_info(i32*, %struct.TYPE_3__**, i64*) #1

declare dso_local i32 @ctf_set_errno(i32*, i32) #1

declare dso_local i8* @ctf_strraw(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
