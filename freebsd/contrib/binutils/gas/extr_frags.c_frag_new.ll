; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_frags.c_frag_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_frags.c_frag_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, %struct.list_info_struct*, i32, i32, i64 }
%struct.list_info_struct = type { i32 }

@frchain_now = common dso_local global %struct.TYPE_7__* null, align 8
@frag_now = common dso_local global %struct.TYPE_8__* null, align 8
@listing_tail = external dso_local global %struct.list_info_struct*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frag_new(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @frchain_now, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %9 = icmp eq %struct.TYPE_8__* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call i64 (...) @frag_now_fix_octets()
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %12, %14
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @frchain_now, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = call i32 @obstack_finish(i32* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @frchain_now, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %4, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = call i32 @know(%struct.TYPE_7__* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %3, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %39 = icmp eq %struct.TYPE_8__* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = call %struct.TYPE_8__* @frag_alloc(i32* %43)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** @frag_now, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = call i32 @as_where(i32* %46, i32* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %55, align 8
  %56 = load %struct.list_info_struct*, %struct.list_info_struct** @listing_tail, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store %struct.list_info_struct* %56, %struct.list_info_struct** %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @frchain_now, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %63 = icmp eq %struct.TYPE_8__* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %67, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @frag_now_fix_octets(...) #1

declare dso_local i32 @obstack_finish(i32*) #1

declare dso_local i32 @know(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @frag_alloc(i32*) #1

declare dso_local i32 @as_where(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
