; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c_cpp_token_val_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c_cpp_token_val_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@CPP_TOKEN_FLD_NODE = common dso_local global i32 0, align 4
@CPP_TOKEN_FLD_STR = common dso_local global i32 0, align 4
@CPP_MACRO_ARG = common dso_local global i32 0, align 4
@CPP_TOKEN_FLD_ARG_NO = common dso_local global i32 0, align 4
@CPP_PADDING = common dso_local global i32 0, align 4
@CPP_TOKEN_FLD_SOURCE = common dso_local global i32 0, align 4
@CPP_PRAGMA = common dso_local global i32 0, align 4
@CPP_TOKEN_FLD_PRAGMA = common dso_local global i32 0, align 4
@CPP_TOKEN_FLD_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpp_token_val_index(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = call i32 @TOKEN_SPELL(%struct.TYPE_4__* %4)
  switch i32 %5, label %37 [
    i32 130, label %6
    i32 129, label %8
    i32 128, label %10
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @CPP_TOKEN_FLD_NODE, align 4
  store i32 %7, i32* %2, align 4
  br label %39

8:                                                ; preds = %1
  %9 = load i32, i32* @CPP_TOKEN_FLD_STR, align 4
  store i32 %9, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CPP_MACRO_ARG, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @CPP_TOKEN_FLD_ARG_NO, align 4
  store i32 %17, i32* %2, align 4
  br label %39

18:                                               ; preds = %10
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CPP_PADDING, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @CPP_TOKEN_FLD_SOURCE, align 4
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CPP_PRAGMA, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @CPP_TOKEN_FLD_PRAGMA, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %1, %36
  %38 = load i32, i32* @CPP_TOKEN_FLD_NONE, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %32, %24, %16, %8, %6
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @TOKEN_SPELL(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
