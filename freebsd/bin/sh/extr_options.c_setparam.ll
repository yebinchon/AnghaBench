; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_setparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_setparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8**, i32, i32*, i32* }

@shellparam = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @setparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setparam(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = trunc i64 %10 to i32
  %12 = call i8** @ckmalloc(i32 %11)
  store i8** %12, i8*** %5, align 8
  store i8** %12, i8*** %6, align 8
  br label %13

13:                                               ; preds = %17, %2
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %4, align 8
  %20 = load i8*, i8** %18, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = call i32 @savestr(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %6, align 8
  store i8* %24, i8** %25, align 8
  br label %13

27:                                               ; preds = %13
  %28 = load i8**, i8*** %6, align 8
  store i8* null, i8** %28, align 8
  %29 = call i32 @freeparam(%struct.TYPE_3__* @shellparam)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shellparam, i32 0, i32 0), align 8
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shellparam, i32 0, i32 1), align 4
  %31 = load i8**, i8*** %5, align 8
  store i8** %31, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shellparam, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shellparam, i32 0, i32 5), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shellparam, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shellparam, i32 0, i32 4), align 8
  ret void
}

declare dso_local i8** @ckmalloc(i32) #1

declare dso_local i32 @savestr(i32) #1

declare dso_local i32 @freeparam(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
