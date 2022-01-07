; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_list_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_head = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.sym_entry = type { %struct.TYPE_6__*, %struct.sym_entry* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@SHN_COMMON = common dso_local global i64 0, align 8
@sym_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_head*, i8*, %struct.TYPE_5__*)* @sym_list_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_list_insert(%struct.sym_head* %0, i8* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sym_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.sym_entry*, align 8
  store %struct.sym_head* %0, %struct.sym_head** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %9 = load %struct.sym_head*, %struct.sym_head** %5, align 8
  %10 = icmp eq %struct.sym_head* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %3
  store i32 0, i32* %4, align 4
  br label %72

18:                                               ; preds = %14
  %19 = call i8* @malloc(i32 16)
  %20 = bitcast i8* %19 to %struct.sym_entry*
  store %struct.sym_entry* %20, %struct.sym_entry** %8, align 8
  %21 = icmp eq %struct.sym_entry* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %72

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = call %struct.sym_entry* @strdup(i8* %25)
  %27 = load %struct.sym_entry*, %struct.sym_entry** %8, align 8
  %28 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %27, i32 0, i32 1
  store %struct.sym_entry* %26, %struct.sym_entry** %28, align 8
  %29 = icmp eq %struct.sym_entry* %26, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.sym_entry*, %struct.sym_entry** %8, align 8
  %33 = call i32 @free(%struct.sym_entry* %32)
  store i32 0, i32* %4, align 4
  br label %72

34:                                               ; preds = %24
  %35 = call i8* @malloc(i32 16)
  %36 = bitcast i8* %35 to %struct.TYPE_6__*
  %37 = load %struct.sym_entry*, %struct.sym_entry** %8, align 8
  %38 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %37, i32 0, i32 0
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %38, align 8
  %39 = icmp eq %struct.TYPE_6__* %36, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.sym_entry*, %struct.sym_entry** %8, align 8
  %43 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %42, i32 0, i32 1
  %44 = load %struct.sym_entry*, %struct.sym_entry** %43, align 8
  %45 = call i32 @free(%struct.sym_entry* %44)
  %46 = load %struct.sym_entry*, %struct.sym_entry** %8, align 8
  %47 = call i32 @free(%struct.sym_entry* %46)
  store i32 0, i32* %4, align 4
  br label %72

48:                                               ; preds = %34
  %49 = load %struct.sym_entry*, %struct.sym_entry** %8, align 8
  %50 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = call i32 @memcpy(%struct.TYPE_6__* %51, %struct.TYPE_5__* %52, i32 16)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SHN_COMMON, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.sym_entry*, %struct.sym_entry** %8, align 8
  %64 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %59, %48
  %68 = load %struct.sym_head*, %struct.sym_head** %5, align 8
  %69 = load %struct.sym_entry*, %struct.sym_entry** %8, align 8
  %70 = load i32, i32* @sym_entries, align 4
  %71 = call i32 @STAILQ_INSERT_TAIL(%struct.sym_head* %68, %struct.sym_entry* %69, i32 %70)
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %40, %30, %22, %17
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.sym_entry* @strdup(i8*) #1

declare dso_local i32 @free(%struct.sym_entry*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(%struct.sym_head*, %struct.sym_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
