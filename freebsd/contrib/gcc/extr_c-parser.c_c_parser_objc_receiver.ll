; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@CPP_NAME = common dso_local global i64 0, align 8
@C_ID_TYPENAME = common dso_local global i64 0, align 8
@C_ID_CLASSNAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @c_parser_objc_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_parser_objc_receiver(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CPP_NAME, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @C_ID_TYPENAME, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load i32*, i32** %3, align 8
  %21 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @C_ID_CLASSNAME, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %19, %12
  %27 = load i32*, i32** %3, align 8
  %28 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %4, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @c_parser_consume_token(i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @objc_get_class_reference(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %19, %1
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @c_parser_expression(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %35, %26
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.TYPE_3__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @objc_get_class_reference(i32) #1

declare dso_local i32 @c_parser_expression(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
