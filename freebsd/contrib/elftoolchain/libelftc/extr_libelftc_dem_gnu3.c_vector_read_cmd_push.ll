; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_vector_read_cmd_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_vector_read_cmd_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_read_cmd = type { i64, i64, %struct.read_cmd_item* }
%struct.read_cmd_item = type { i32, i8* }

@BUFFER_GROWFACTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_read_cmd*, i32, i8*)* @vector_read_cmd_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_read_cmd_push(%struct.vector_read_cmd* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vector_read_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.read_cmd_item*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vector_read_cmd* %0, %struct.vector_read_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %12 = icmp eq %struct.vector_read_cmd* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

14:                                               ; preds = %3
  %15 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %14
  %23 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BUFFER_GROWFACTOR, align 8
  %27 = mul i64 %25, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = mul i64 16, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.read_cmd_item* @malloc(i32 %30)
  store %struct.read_cmd_item* %31, %struct.read_cmd_item** %8, align 8
  %32 = icmp eq %struct.read_cmd_item* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %89

34:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.read_cmd_item*, %struct.read_cmd_item** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.read_cmd_item, %struct.read_cmd_item* %42, i64 %43
  %45 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %46 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %45, i32 0, i32 2
  %47 = load %struct.read_cmd_item*, %struct.read_cmd_item** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.read_cmd_item, %struct.read_cmd_item* %47, i64 %48
  %50 = bitcast %struct.read_cmd_item* %44 to i8*
  %51 = bitcast %struct.read_cmd_item* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  br label %52

52:                                               ; preds = %41
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %10, align 8
  br label %35

55:                                               ; preds = %35
  %56 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %56, i32 0, i32 2
  %58 = load %struct.read_cmd_item*, %struct.read_cmd_item** %57, align 8
  %59 = call i32 @free(%struct.read_cmd_item* %58)
  %60 = load %struct.read_cmd_item*, %struct.read_cmd_item** %8, align 8
  %61 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %61, i32 0, i32 2
  store %struct.read_cmd_item* %60, %struct.read_cmd_item** %62, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %55, %14
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %69 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %68, i32 0, i32 2
  %70 = load %struct.read_cmd_item*, %struct.read_cmd_item** %69, align 8
  %71 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %72 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.read_cmd_item, %struct.read_cmd_item* %70, i64 %73
  %75 = getelementptr inbounds %struct.read_cmd_item, %struct.read_cmd_item* %74, i32 0, i32 0
  store i32 %67, i32* %75, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %77, i32 0, i32 2
  %79 = load %struct.read_cmd_item*, %struct.read_cmd_item** %78, align 8
  %80 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %81 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.read_cmd_item, %struct.read_cmd_item* %79, i64 %82
  %84 = getelementptr inbounds %struct.read_cmd_item, %struct.read_cmd_item* %83, i32 0, i32 1
  store i8* %76, i8** %84, align 8
  %85 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %5, align 8
  %86 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %86, align 8
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %66, %33, %13
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.read_cmd_item* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.read_cmd_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
