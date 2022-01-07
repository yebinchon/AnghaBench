; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_viafb_init_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_viafb_init_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.proc_dir_entry = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"viafb\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dvp0\00", align 1
@viafb_dvp0_proc_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"dvp1\00", align 1
@viafb_dvp1_proc_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"dfph\00", align 1
@viafb_dfph_proc_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"dfpl\00", align 1
@viafb_dfpl_proc_fops = common dso_local global i32 0, align 4
@VT1636_LVDS = common dso_local global i64 0, align 8
@viaparinfo = common dso_local global %struct.TYPE_8__* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"vt1636\00", align 1
@viafb_vt1636_proc_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc_dir_entry**)* @viafb_init_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viafb_init_proc(%struct.proc_dir_entry** %0) #0 {
  %2 = alloca %struct.proc_dir_entry**, align 8
  store %struct.proc_dir_entry** %0, %struct.proc_dir_entry*** %2, align 8
  %3 = call %struct.proc_dir_entry* @proc_mkdir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null)
  %4 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %2, align 8
  store %struct.proc_dir_entry* %3, %struct.proc_dir_entry** %4, align 8
  %5 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %2, align 8
  %6 = icmp ne %struct.proc_dir_entry** %5, null
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  %8 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %2, align 8
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %10 = call i32 @proc_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.proc_dir_entry* %9, i32* @viafb_dvp0_proc_fops)
  %11 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %2, align 8
  %12 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %11, align 8
  %13 = call i32 @proc_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, %struct.proc_dir_entry* %12, i32* @viafb_dvp1_proc_fops)
  %14 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %2, align 8
  %15 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %14, align 8
  %16 = call i32 @proc_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0, %struct.proc_dir_entry* %15, i32* @viafb_dfph_proc_fops)
  %17 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %2, align 8
  %18 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %17, align 8
  %19 = call i32 @proc_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0, %struct.proc_dir_entry* %18, i32* @viafb_dfpl_proc_fops)
  %20 = load i64, i64* @VT1636_LVDS, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %20, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %7
  %29 = load i64, i64* @VT1636_LVDS, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %29, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28, %7
  %38 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %2, align 8
  %39 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %38, align 8
  %40 = call i32 @proc_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 0, %struct.proc_dir_entry* %39, i32* @viafb_vt1636_proc_fops)
  br label %41

41:                                               ; preds = %37, %28
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, i32*) #1

declare dso_local i32 @proc_create(i8*, i32, %struct.proc_dir_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
