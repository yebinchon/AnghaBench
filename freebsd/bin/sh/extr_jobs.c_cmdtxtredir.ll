; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_cmdtxtredir.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_cmdtxtredir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@NTOFD = common dso_local global i64 0, align 8
@NFROMFD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.node*, i8*, i32)* @cmdtxtredir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdtxtredir(%union.node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %union.node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 1
  store %union.node* %0, %union.node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %union.node*, %union.node** %4, align 8
  %9 = bitcast %union.node* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %union.node*, %union.node** %4, align 8
  %16 = bitcast %union.node* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 48
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %24 = call i32 @cmdputs(i8* %23)
  br label %25

25:                                               ; preds = %14, %3
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @cmdputs(i8* %26)
  %28 = load %union.node*, %union.node** %4, align 8
  %29 = bitcast %union.node* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NTOFD, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = load %union.node*, %union.node** %4, align 8
  %35 = bitcast %union.node* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NFROMFD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %33, %25
  %40 = load %union.node*, %union.node** %4, align 8
  %41 = bitcast %union.node* %40 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %union.node*, %union.node** %4, align 8
  %47 = bitcast %union.node* %46 to %struct.TYPE_3__*
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 48
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %51, i8* %52, align 1
  br label %55

53:                                               ; preds = %39
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 45, i8* %54, align 1
  br label %55

55:                                               ; preds = %53, %45
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %56, align 1
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %58 = call i32 @cmdputs(i8* %57)
  br label %65

59:                                               ; preds = %33
  %60 = load %union.node*, %union.node** %4, align 8
  %61 = bitcast %union.node* %60 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cmdtxt(i32 %63)
  br label %65

65:                                               ; preds = %59, %55
  ret void
}

declare dso_local i32 @cmdputs(i8*) #1

declare dso_local i32 @cmdtxt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
