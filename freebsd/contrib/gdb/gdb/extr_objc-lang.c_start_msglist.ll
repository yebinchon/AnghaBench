; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_start_msglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_start_msglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selname = type { i8*, i64, %struct.selname* }

@selname_chain = common dso_local global %struct.selname* null, align 8
@msglist_len = common dso_local global i64 0, align 8
@msglist_sel = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_msglist() #0 {
  %1 = alloca %struct.selname*, align 8
  %2 = call i64 @xmalloc(i32 24)
  %3 = inttoptr i64 %2 to %struct.selname*
  store %struct.selname* %3, %struct.selname** %1, align 8
  %4 = load %struct.selname*, %struct.selname** @selname_chain, align 8
  %5 = load %struct.selname*, %struct.selname** %1, align 8
  %6 = getelementptr inbounds %struct.selname, %struct.selname* %5, i32 0, i32 2
  store %struct.selname* %4, %struct.selname** %6, align 8
  %7 = load i64, i64* @msglist_len, align 8
  %8 = load %struct.selname*, %struct.selname** %1, align 8
  %9 = getelementptr inbounds %struct.selname, %struct.selname* %8, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  %10 = load i8*, i8** @msglist_sel, align 8
  %11 = load %struct.selname*, %struct.selname** %1, align 8
  %12 = getelementptr inbounds %struct.selname, %struct.selname* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  store i64 0, i64* @msglist_len, align 8
  %13 = call i64 @xmalloc(i32 1)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @msglist_sel, align 8
  %15 = load i8*, i8** @msglist_sel, align 8
  store i8 0, i8* %15, align 1
  %16 = load %struct.selname*, %struct.selname** %1, align 8
  store %struct.selname* %16, %struct.selname** @selname_chain, align 8
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
