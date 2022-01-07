; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process_test.c_do_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process_test.c_do_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_print_data = type { i8* }
%struct.base_stream = type { i32 (i8*)*, i32 (i8*, i32*)*, i32, i32 (i8*)* }

@.str = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@__const.do_fork.cpd = private unnamed_addr constant %struct.child_print_data { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0) }, align 8
@child_print = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.base_stream*, i8*, %struct.base_stream*, i8*)* @do_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_fork(%struct.base_stream* %0, i8* %1, %struct.base_stream* %2, i8* %3) #0 {
  %5 = alloca %struct.base_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.base_stream*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.child_print_data, align 8
  store %struct.base_stream* %0, %struct.base_stream** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.base_stream* %2, %struct.base_stream** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = bitcast %struct.child_print_data* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.child_print_data* @__const.do_fork.cpd to i8*), i64 8, i1 false)
  %13 = load %struct.base_stream*, %struct.base_stream** %5, align 8
  %14 = getelementptr inbounds %struct.base_stream, %struct.base_stream* %13, i32 0, i32 3
  %15 = load i32 (i8*)*, i32 (i8*)** %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 %15(i8* %16)
  %18 = load %struct.base_stream*, %struct.base_stream** %7, align 8
  %19 = getelementptr inbounds %struct.base_stream, %struct.base_stream* %18, i32 0, i32 3
  %20 = load i32 (i8*)*, i32 (i8*)** %19, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 %20(i8* %21)
  %23 = load i32, i32* @child_print, align 4
  %24 = load %struct.base_stream*, %struct.base_stream** %5, align 8
  %25 = getelementptr inbounds %struct.base_stream, %struct.base_stream* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.base_stream*, %struct.base_stream** %7, align 8
  %28 = getelementptr inbounds %struct.base_stream, %struct.base_stream* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @atf_process_fork(i32* %9, i32 %23, i32 %26, i32 %29, %struct.child_print_data* %11)
  %31 = call i32 @RE(i32 %30)
  %32 = load %struct.base_stream*, %struct.base_stream** %5, align 8
  %33 = getelementptr inbounds %struct.base_stream, %struct.base_stream* %32, i32 0, i32 1
  %34 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %33, align 8
  %35 = icmp ne i32 (i8*, i32*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load %struct.base_stream*, %struct.base_stream** %5, align 8
  %38 = getelementptr inbounds %struct.base_stream, %struct.base_stream* %37, i32 0, i32 1
  %39 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 %39(i8* %40, i32* %9)
  br label %42

42:                                               ; preds = %36, %4
  %43 = load %struct.base_stream*, %struct.base_stream** %7, align 8
  %44 = getelementptr inbounds %struct.base_stream, %struct.base_stream* %43, i32 0, i32 1
  %45 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %44, align 8
  %46 = icmp ne i32 (i8*, i32*)* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.base_stream*, %struct.base_stream** %7, align 8
  %49 = getelementptr inbounds %struct.base_stream, %struct.base_stream* %48, i32 0, i32 1
  %50 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %49, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 %50(i8* %51, i32* %9)
  br label %53

53:                                               ; preds = %47, %42
  %54 = call i32 @atf_process_child_wait(i32* %9, i32* %10)
  %55 = call i32 @RE(i32 %54)
  %56 = load %struct.base_stream*, %struct.base_stream** %5, align 8
  %57 = getelementptr inbounds %struct.base_stream, %struct.base_stream* %56, i32 0, i32 0
  %58 = load i32 (i8*)*, i32 (i8*)** %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 %58(i8* %59)
  %61 = load %struct.base_stream*, %struct.base_stream** %7, align 8
  %62 = getelementptr inbounds %struct.base_stream, %struct.base_stream* %61, i32 0, i32 0
  %63 = load i32 (i8*)*, i32 (i8*)** %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 %63(i8* %64)
  %66 = call i32 @atf_process_status_fini(i32* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @RE(i32) #2

declare dso_local i32 @atf_process_fork(i32*, i32, i32, i32, %struct.child_print_data*) #2

declare dso_local i32 @atf_process_child_wait(i32*, i32*) #2

declare dso_local i32 @atf_process_status_fini(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
