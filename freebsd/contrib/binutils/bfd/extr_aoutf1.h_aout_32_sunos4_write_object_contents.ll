; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutf1.h_aout_32_sunos4_write_object_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutf1.h_aout_32_sunos4_write_object_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.external_exec = type { i32 }
%struct.internal_exec = type { i32 }
%struct.TYPE_2__ = type { i32 }

@M_UNKNOWN = common dso_local global i32 0, align 4
@M_68010 = common dso_local global i32 0, align 4
@M_68020 = common dso_local global i32 0, align 4
@M_SPARCLET = common dso_local global i32 0, align 4
@M_SPARCLITE_LE = common dso_local global i32 0, align 4
@M_SPARC = common dso_local global i32 0, align 4
@M_386 = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sunos_write_object_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunos_write_object_contents(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.external_exec, align 4
  %4 = alloca %struct.internal_exec*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.internal_exec* @exec_hdr(i32* %5)
  store %struct.internal_exec* %6, %struct.internal_exec** %4, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @bfd_get_arch(i32* %7)
  switch i32 %8, label %60 [
    i32 134, label %9
    i32 133, label %32
    i32 135, label %54
  ]

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @bfd_get_mach(i32* %10)
  switch i32 %11, label %24 [
    i32 132, label %12
    i32 131, label %18
    i32 130, label %25
  ]

12:                                               ; preds = %9
  %13 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %14 = load i32, i32* @M_UNKNOWN, align 4
  %15 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %13, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @N_SET_MACHTYPE(i32 %16, i32 %14)
  br label %31

18:                                               ; preds = %9
  %19 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %20 = load i32, i32* @M_68010, align 4
  %21 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %19, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @N_SET_MACHTYPE(i32 %22, i32 %20)
  br label %31

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %9, %24
  %26 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %27 = load i32, i32* @M_68020, align 4
  %28 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %26, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @N_SET_MACHTYPE(i32 %29, i32 %27)
  br label %31

31:                                               ; preds = %25, %18, %12
  br label %66

32:                                               ; preds = %1
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @bfd_get_mach(i32* %33)
  switch i32 %34, label %47 [
    i32 129, label %35
    i32 128, label %41
  ]

35:                                               ; preds = %32
  %36 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %37 = load i32, i32* @M_SPARCLET, align 4
  %38 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %36, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @N_SET_MACHTYPE(i32 %39, i32 %37)
  br label %53

41:                                               ; preds = %32
  %42 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %43 = load i32, i32* @M_SPARCLITE_LE, align 4
  %44 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %42, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @N_SET_MACHTYPE(i32 %45, i32 %43)
  br label %53

47:                                               ; preds = %32
  %48 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %49 = load i32, i32* @M_SPARC, align 4
  %50 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %48, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @N_SET_MACHTYPE(i32 %51, i32 %49)
  br label %53

53:                                               ; preds = %47, %41, %35
  br label %66

54:                                               ; preds = %1
  %55 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %56 = load i32, i32* @M_386, align 4
  %57 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %55, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @N_SET_MACHTYPE(i32 %58, i32 %56)
  br label %66

60:                                               ; preds = %1
  %61 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %62 = load i32, i32* @M_UNKNOWN, align 4
  %63 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %61, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @N_SET_MACHTYPE(i32 %64, i32 %62)
  br label %66

66:                                               ; preds = %60, %54, %53, %31
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @choose_reloc_size(i32* %67)
  %69 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %70 = load i32*, i32** %2, align 8
  %71 = call %struct.TYPE_2__* @aout_backend_info(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %69, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @N_SET_FLAGS(i32 %75, i32 %73)
  %77 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @bfd_get_file_flags(i32* %78)
  %80 = load i32, i32* @DYNAMIC, align 4
  %81 = and i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %77, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @N_SET_DYNAMIC(i32 %84, i64 %82)
  %86 = load i32*, i32** %2, align 8
  %87 = load %struct.internal_exec*, %struct.internal_exec** %4, align 8
  %88 = call i32 @WRITE_HEADERS(i32* %86, %struct.internal_exec* %87)
  %89 = load i32, i32* @TRUE, align 4
  ret i32 %89
}

declare dso_local %struct.internal_exec* @exec_hdr(i32*) #1

declare dso_local i32 @bfd_get_arch(i32*) #1

declare dso_local i32 @bfd_get_mach(i32*) #1

declare dso_local i32 @N_SET_MACHTYPE(i32, i32) #1

declare dso_local i32 @choose_reloc_size(i32*) #1

declare dso_local i32 @N_SET_FLAGS(i32, i32) #1

declare dso_local %struct.TYPE_2__* @aout_backend_info(i32*) #1

declare dso_local i32 @N_SET_DYNAMIC(i32, i64) #1

declare dso_local i32 @bfd_get_file_flags(i32*) #1

declare dso_local i32 @WRITE_HEADERS(i32*, %struct.internal_exec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
