; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@ECTF_NOTSUE = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i32 0, align 4
@CTF_K_FORWARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_add_forward(%struct.TYPE_13__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %24 [
    i32 129, label %15
    i32 128, label %18
    i32 130, label %21
  ]

15:                                               ; preds = %4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i32* %17, i32** %10, align 8
  br label %28

18:                                               ; preds = %4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i32* %20, i32** %10, align 8
  br label %28

21:                                               ; preds = %4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i32* %23, i32** %10, align 8
  br label %28

24:                                               ; preds = %4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = load i32, i32* @ECTF_NOTSUE, align 4
  %27 = call i32 @ctf_set_errno(%struct.TYPE_13__* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %64

28:                                               ; preds = %21, %18, %15
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32*, i32** %10, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call %struct.TYPE_12__* @ctf_hash_lookup(i32* %32, %struct.TYPE_13__* %33, i8* %34, i32 %36)
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %11, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %5, align 4
  br label %64

43:                                               ; preds = %31, %28
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @ctf_add_generic(%struct.TYPE_13__* %44, i32 %45, i8* %46, %struct.TYPE_14__** %12)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* @CTF_ERR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @CTF_ERR, align 4
  store i32 %51, i32* %5, align 4
  br label %64

52:                                               ; preds = %43
  %53 = load i32, i32* @CTF_K_FORWARD, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @CTF_TYPE_INFO(i32 %53, i32 %54, i32 0)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %52, %50, %39, %24
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @ctf_set_errno(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_12__* @ctf_hash_lookup(i32*, %struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ctf_add_generic(%struct.TYPE_13__*, i32, i8*, %struct.TYPE_14__**) #1

declare dso_local i32 @CTF_TYPE_INFO(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
