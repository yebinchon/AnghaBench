; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_attr_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_attr_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@yypcb = common dso_local global %struct.TYPE_7__* null, align 8
@DTRACE_C_EATTR = common dso_local global i32 0, align 4
@DTRACE_ATTR2STR_MAX = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@D_ATTR_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"attributes for %s (%s) are less than predefined minimum\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_node_attr_assign(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @yypcb, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DTRACE_C_EATTR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @yypcb, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @dt_attr_cmp(i32 %15, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %14
  %22 = load i32, i32* @DTRACE_ATTR2STR_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %5, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %6, align 8
  %26 = load i32, i32* @BUFSIZ, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %7, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = load i32, i32* @D_ATTR_MIN, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = trunc i64 %27 to i32
  %33 = call i32 @dt_node_name(%struct.TYPE_6__* %31, i8* %28, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = trunc i64 %23 to i32
  %36 = call i32 @dtrace_attr2str(i32 %34, i8* %25, i32 %35)
  %37 = call i32 @dnerror(%struct.TYPE_6__* %29, i32 %30, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %38)
  br label %39

39:                                               ; preds = %21, %14, %2
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i64 @dt_attr_cmp(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dnerror(%struct.TYPE_6__*, i32, i8*, i32, i32) #1

declare dso_local i32 @dt_node_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @dtrace_attr2str(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
