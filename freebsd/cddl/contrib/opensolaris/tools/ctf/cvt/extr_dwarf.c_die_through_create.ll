; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_through_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_through_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"die %llu <%llx>: creating %s type %d\0A\00", align 1
@DW_AT_type = common dso_local global i32 0, align 4
@POINTER = common dso_local global i32 0, align 4
@TDESC_F_RESOLVED = common dso_local global i32 0, align 4
@TYPEDEF = common dso_local global i32 0, align 4
@II_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, i32, %struct.TYPE_13__*, i32, i8*)* @die_through_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @die_through_create(%struct.TYPE_15__* %0, i32 %1, i32 %2, %struct.TYPE_13__* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @debug(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i8* %17, i32 %18)
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @DW_AT_type, align 4
  %26 = call i32* @die_attr(%struct.TYPE_15__* %23, i32 %24, i32 %25, i32 0)
  store i32* %26, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %6
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @DW_AT_type, align 4
  %32 = call i32 @die_lookup_pass1(%struct.TYPE_15__* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  br label %40

35:                                               ; preds = %6
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = call i32 @tdesc_intr_void(%struct.TYPE_15__* %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %28
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @POINTER, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %40
  %51 = load i32, i32* @TDESC_F_RESOLVED, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @TYPEDEF, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %50
  %60 = call %struct.TYPE_14__* @xcalloc(i32 16)
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %14, align 8
  %61 = load i32, i32* @II_TYPE, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @xstrdup(i32 %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %79 = call i32 @iidesc_add(i32 %77, %struct.TYPE_14__* %78)
  br label %80

80:                                               ; preds = %59, %50
  ret void
}

declare dso_local i32 @debug(i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32* @die_attr(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @die_lookup_pass1(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @tdesc_intr_void(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @xcalloc(i32) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @iidesc_add(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
