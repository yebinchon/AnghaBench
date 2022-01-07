; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_delete_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_delete_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@LCTF_RDWR = common dso_local global i32 0, align 4
@ECTF_RDONLY = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i32 0, align 4
@ECTF_NOTDYN = common dso_local global i32 0, align 4
@ECTF_REFERENCED = common dso_local global i32 0, align 4
@LCTF_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_delete_type(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_11__* @ctf_dtd_lookup(%struct.TYPE_10__* %8, i32 %9)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LCTF_RDWR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = load i32, i32* @ECTF_RDONLY, align 4
  %20 = call i32 @ctf_set_errno(%struct.TYPE_10__* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32* @ctf_lookup_by_id(%struct.TYPE_10__** %6, i32 %23)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.TYPE_11__* @ctf_dtd_lookup(%struct.TYPE_10__* %27, i32 %28)
  %30 = icmp eq %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @CTF_ERR, align 4
  store i32 %32, i32* %3, align 4
  br label %63

33:                                               ; preds = %26, %21
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = icmp eq %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = load i32, i32* @ECTF_NOTDYN, align 4
  %39 = call i32 @ctf_set_errno(%struct.TYPE_10__* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %63

40:                                               ; preds = %33
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %40
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = load i32, i32* @ECTF_REFERENCED, align 4
  %53 = call i32 @ctf_set_errno(%struct.TYPE_10__* %51, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %63

54:                                               ; preds = %45
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = call i32 @ctf_dtd_delete(%struct.TYPE_10__* %55, %struct.TYPE_11__* %56)
  %58 = load i32, i32* @LCTF_DIRTY, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %50, %36, %31, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_11__* @ctf_dtd_lookup(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ctf_set_errno(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @ctf_lookup_by_id(%struct.TYPE_10__**, i32) #1

declare dso_local i32 @ctf_dtd_delete(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
