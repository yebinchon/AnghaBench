; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsv4-nat.c_fill_fpregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsv4-nat.c_fill_fpregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@deprecated_registers = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_fpregset(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @current_gdbarch, align 4
  %9 = call %struct.TYPE_7__* @mips_regnum(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %52, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @current_gdbarch, align 4
  %15 = call %struct.TYPE_7__* @mips_regnum(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 32
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23, %20
  %28 = load i32*, i32** @deprecated_registers, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %29)
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = bitcast i32* %31 to i8*
  store i8* %32, i8** %6, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @current_gdbarch, align 4
  %39 = call %struct.TYPE_7__* @mips_regnum(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %37, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %36, i64 %43
  %45 = bitcast i32* %44 to i8*
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %48)
  %50 = call i32 @memcpy(i8* %46, i8* %47, i32 %49)
  br label %51

51:                                               ; preds = %27, %23
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %12

55:                                               ; preds = %12
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @current_gdbarch, align 4
  %61 = call %struct.TYPE_7__* @mips_regnum(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %58, %55
  %66 = load i32*, i32** @deprecated_registers, align 8
  %67 = load i32, i32* @current_gdbarch, align 4
  %68 = call %struct.TYPE_7__* @mips_regnum(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %70)
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %65, %58
  ret void
}

declare dso_local %struct.TYPE_7__* @mips_regnum(i32) #1

declare dso_local i64 @DEPRECATED_REGISTER_BYTE(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
