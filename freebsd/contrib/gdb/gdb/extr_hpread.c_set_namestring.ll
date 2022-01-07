; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_set_namestring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_set_namestring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dnttentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.objfile = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@symfile_complaints = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"bad string table offset in symbol %d\00", align 1
@symnum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.dnttentry*, i8**, %struct.objfile*)* @set_namestring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_namestring(%union.dnttentry* %0, i8** %1, %struct.objfile* %2) #0 {
  %4 = alloca %union.dnttentry*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.objfile*, align 8
  store %union.dnttentry* %0, %union.dnttentry** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.objfile* %2, %struct.objfile** %6, align 8
  %7 = load %union.dnttentry*, %union.dnttentry** %4, align 8
  %8 = bitcast %union.dnttentry* %7 to %struct.TYPE_3__*
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @hpread_has_name(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %39

15:                                               ; preds = %3
  %16 = load %union.dnttentry*, %union.dnttentry** %4, align 8
  %17 = bitcast %union.dnttentry* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.objfile*, %struct.objfile** %6, align 8
  %22 = call i32 @VT_SIZE(%struct.objfile* %21)
  %23 = icmp uge i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i32, i32* @symnum, align 4
  %26 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  br label %38

28:                                               ; preds = %15
  %29 = load %union.dnttentry*, %union.dnttentry** %4, align 8
  %30 = bitcast %union.dnttentry* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.objfile*, %struct.objfile** %6, align 8
  %34 = call i32 @VT(%struct.objfile* %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8**, i8*** %5, align 8
  store i8* %36, i8** %37, align 8
  br label %38

38:                                               ; preds = %28, %24
  br label %39

39:                                               ; preds = %38, %13
  ret void
}

declare dso_local i32 @hpread_has_name(i32) #1

declare dso_local i32 @VT_SIZE(%struct.objfile*) #1

declare dso_local i32 @complaint(i32*, i8*, i32) #1

declare dso_local i32 @VT(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
