; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c_nsalloc_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/tests/extr_runtests.c_nsalloc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@duff_allocator = common dso_local global i32 0, align 4
@duff_reallocator = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@__const.nsalloc_setup.ns_sep = private unnamed_addr constant [2 x i8] c" \00", align 1
@ALLOC_ALWAYS_SUCCEED = common dso_local global i32 0, align 4
@allocation_count = common dso_local global i32 0, align 4
@REALLOC_ALWAYS_SUCCEED = common dso_local global i32 0, align 4
@reallocation_count = common dso_local global i32 0, align 4
@parser = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Parser not created\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nsalloc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsalloc_setup() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca [2 x i8], align 1
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %4 = load i32, i32* @duff_allocator, align 4
  store i32 %4, i32* %3, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %6 = load i32, i32* @duff_reallocator, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %8 = load i32, i32* @free, align 4
  store i32 %8, i32* %7, align 4
  %9 = bitcast [2 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.nsalloc_setup.ns_sep, i32 0, i32 0), i64 2, i1 false)
  %10 = load i32, i32* @ALLOC_ALWAYS_SUCCEED, align 4
  store i32 %10, i32* @allocation_count, align 4
  %11 = load i32, i32* @REALLOC_ALWAYS_SUCCEED, align 4
  store i32 %11, i32* @reallocation_count, align 4
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  %13 = call i32* @XML_ParserCreate_MM(i32* null, %struct.TYPE_3__* %1, i8* %12)
  store i32* %13, i32** @parser, align 8
  %14 = load i32*, i32** @parser, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @XML_ParserCreate_MM(i32*, %struct.TYPE_3__*, i8*) #2

declare dso_local i32 @fail(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
