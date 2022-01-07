; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_type_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_type_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@CTF_ERR = common dso_local global i32 0, align 4
@LCTF_CHILD = common dso_local global i32 0, align 4
@ECTF_NOTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_type_pointer(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32* @ctf_lookup_by_id(%struct.TYPE_6__** %4, i32 %9)
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @CTF_ERR, align 4
  store i32 %13, i32* %3, align 4
  br label %70

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @CTF_TYPE_TO_INDEX(i32 %18)
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LCTF_CHILD, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @CTF_INDEX_TO_TYPE(i32 %24, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %70

31:                                               ; preds = %14
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ctf_type_resolve(%struct.TYPE_6__* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @CTF_ERR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = load i32, i32* @ECTF_NOTYPE, align 4
  %40 = call i32 @ctf_set_errno(%struct.TYPE_6__* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %70

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = call i32* @ctf_lookup_by_id(%struct.TYPE_6__** %4, i32 %42)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = load i32, i32* @ECTF_NOTYPE, align 4
  %48 = call i32 @ctf_set_errno(%struct.TYPE_6__* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %70

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @CTF_TYPE_TO_INDEX(i32 %53)
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @LCTF_CHILD, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @CTF_INDEX_TO_TYPE(i32 %59, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %49
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = load i32, i32* @ECTF_NOTYPE, align 4
  %69 = call i32 @ctf_set_errno(%struct.TYPE_6__* %67, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %58, %45, %37, %23, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32* @ctf_lookup_by_id(%struct.TYPE_6__**, i32) #1

declare dso_local i64 @CTF_TYPE_TO_INDEX(i32) #1

declare dso_local i32 @CTF_INDEX_TO_TYPE(i32, i32) #1

declare dso_local i32 @ctf_type_resolve(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ctf_set_errno(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
