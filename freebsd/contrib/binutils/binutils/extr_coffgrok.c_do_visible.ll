; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_do_visible.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_do_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.internal_syment }
%struct.internal_syment = type { i32, i32, i32 }
%struct.coff_visible = type { i32 }

@rawsyms = common dso_local global %struct.TYPE_4__* null, align 8
@coff_vis_member_of_struct = common dso_local global i32 0, align 4
@coff_vis_member_of_enum = common dso_local global i32 0, align 4
@coff_vis_regparam = common dso_local global i32 0, align 4
@coff_vis_register = common dso_local global i32 0, align 4
@coff_vis_tag = common dso_local global i32 0, align 4
@coff_vis_autoparam = common dso_local global i32 0, align 4
@coff_vis_auto = common dso_local global i32 0, align 4
@coff_vis_int_def = common dso_local global i32 0, align 4
@N_UNDEF = common dso_local global i32 0, align 4
@coff_vis_common = common dso_local global i32 0, align 4
@coff_vis_ext_ref = common dso_local global i32 0, align 4
@coff_vis_ext_def = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.coff_visible* (i32)* @do_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.coff_visible* @do_visible(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.internal_syment*, align 8
  %4 = alloca %struct.coff_visible*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rawsyms, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.internal_syment* %11, %struct.internal_syment** %3, align 8
  %12 = call i64 @xmalloc(i32 4)
  %13 = inttoptr i64 %12 to %struct.coff_visible*
  store %struct.coff_visible* %13, %struct.coff_visible** %4, align 8
  %14 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %15 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %52 [
    i32 135, label %17
    i32 134, label %17
    i32 138, label %17
    i32 136, label %19
    i32 132, label %21
    i32 133, label %23
    i32 130, label %25
    i32 128, label %25
    i32 140, label %25
    i32 129, label %25
    i32 141, label %27
    i32 143, label %27
    i32 142, label %29
    i32 137, label %31
    i32 131, label %31
    i32 139, label %33
  ]

17:                                               ; preds = %1, %1, %1
  %18 = load i32, i32* @coff_vis_member_of_struct, align 4
  store i32 %18, i32* %5, align 4
  br label %54

19:                                               ; preds = %1
  %20 = load i32, i32* @coff_vis_member_of_enum, align 4
  store i32 %20, i32* %5, align 4
  br label %54

21:                                               ; preds = %1
  %22 = load i32, i32* @coff_vis_regparam, align 4
  store i32 %22, i32* %5, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load i32, i32* @coff_vis_register, align 4
  store i32 %24, i32* %5, align 4
  br label %54

25:                                               ; preds = %1, %1, %1, %1
  %26 = load i32, i32* @coff_vis_tag, align 4
  store i32 %26, i32* %5, align 4
  br label %54

27:                                               ; preds = %1, %1
  %28 = load i32, i32* @coff_vis_autoparam, align 4
  store i32 %28, i32* %5, align 4
  br label %54

29:                                               ; preds = %1
  %30 = load i32, i32* @coff_vis_auto, align 4
  store i32 %30, i32* %5, align 4
  br label %54

31:                                               ; preds = %1, %1
  %32 = load i32, i32* @coff_vis_int_def, align 4
  store i32 %32, i32* %5, align 4
  br label %54

33:                                               ; preds = %1
  %34 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %35 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @N_UNDEF, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %41 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @coff_vis_common, align 4
  store i32 %45, i32* %5, align 4
  br label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @coff_vis_ext_ref, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %51

49:                                               ; preds = %33
  %50 = load i32, i32* @coff_vis_ext_def, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %48
  br label %54

52:                                               ; preds = %1
  %53 = call i32 (...) @abort() #3
  unreachable

54:                                               ; preds = %51, %31, %29, %27, %25, %23, %21, %19, %17
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.coff_visible*, %struct.coff_visible** %4, align 8
  %57 = getelementptr inbounds %struct.coff_visible, %struct.coff_visible* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.coff_visible*, %struct.coff_visible** %4, align 8
  ret %struct.coff_visible* %58
}

declare dso_local i64 @xmalloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
