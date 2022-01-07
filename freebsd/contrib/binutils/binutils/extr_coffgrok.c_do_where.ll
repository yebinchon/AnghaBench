; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_do_where.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_do_where.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.internal_syment }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.internal_syment = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.coff_where = type { i32, i32, i8*, i32*, i32 }

@rawsyms = common dso_local global %struct.TYPE_13__* null, align 8
@coff_where_member_of_struct = common dso_local global i8* null, align 8
@coff_where_member_of_enum = common dso_local global i8* null, align 8
@coff_where_stack = common dso_local global i8* null, align 8
@coff_where_memory = common dso_local global i8* null, align 8
@ofile = common dso_local global %struct.TYPE_14__* null, align 8
@coff_where_register = common dso_local global i8* null, align 8
@coff_where_entag = common dso_local global i8* null, align 8
@coff_where_strtag = common dso_local global i8* null, align 8
@coff_where_typedef = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.coff_where* (i32)* @do_where to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.coff_where* @do_where(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.internal_syment*, align 8
  %4 = alloca %struct.coff_where*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rawsyms, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store %struct.internal_syment* %10, %struct.internal_syment** %3, align 8
  %11 = call i64 @xmalloc(i32 32)
  %12 = inttoptr i64 %11 to %struct.coff_where*
  store %struct.coff_where* %12, %struct.coff_where** %4, align 8
  %13 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %14 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %17 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %19 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %24 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %27 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %101 [
    i32 138, label %29
    i32 136, label %59
    i32 135, label %63
    i32 134, label %63
    i32 142, label %67
    i32 143, label %67
    i32 140, label %71
    i32 131, label %71
    i32 139, label %71
    i32 137, label %71
    i32 133, label %85
    i32 132, label %85
    i32 141, label %89
    i32 130, label %93
    i32 128, label %93
    i32 129, label %97
  ]

29:                                               ; preds = %25
  %30 = load i8*, i8** @coff_where_member_of_struct, align 8
  %31 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %32 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %34 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 8
  %37 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %38 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %40 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = srem i32 %41, 8
  %43 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %44 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** @rawsyms, align 8
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %58 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  br label %103

59:                                               ; preds = %25
  %60 = load i8*, i8** @coff_where_member_of_enum, align 8
  %61 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %62 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  br label %103

63:                                               ; preds = %25, %25
  %64 = load i8*, i8** @coff_where_member_of_struct, align 8
  %65 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %66 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %103

67:                                               ; preds = %25, %25
  %68 = load i8*, i8** @coff_where_stack, align 8
  %69 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %70 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %103

71:                                               ; preds = %25, %25, %25, %25
  %72 = load i8*, i8** @coff_where_memory, align 8
  %73 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %74 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ofile, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %79 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %84 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %83, i32 0, i32 3
  store i32* %82, i32** %84, align 8
  br label %103

85:                                               ; preds = %25, %25
  %86 = load i8*, i8** @coff_where_register, align 8
  %87 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %88 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  br label %103

89:                                               ; preds = %25
  %90 = load i8*, i8** @coff_where_entag, align 8
  %91 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %92 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  br label %103

93:                                               ; preds = %25, %25
  %94 = load i8*, i8** @coff_where_strtag, align 8
  %95 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %96 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  br label %103

97:                                               ; preds = %25
  %98 = load i8*, i8** @coff_where_typedef, align 8
  %99 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  %100 = getelementptr inbounds %struct.coff_where, %struct.coff_where* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  br label %103

101:                                              ; preds = %25
  %102 = call i32 (...) @abort() #3
  unreachable

103:                                              ; preds = %97, %93, %89, %85, %71, %67, %63, %59, %29
  %104 = load %struct.coff_where*, %struct.coff_where** %4, align 8
  ret %struct.coff_where* %104
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
