; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_init_ttys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_init_ttys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@RFCOMM_TTY_PORTS = common dso_local global i32 0, align 4
@rfcomm_tty_driver = common dso_local global %struct.TYPE_8__* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rfcomm\00", align 1
@RFCOMM_TTY_MAJOR = common dso_local global i32 0, align 4
@RFCOMM_TTY_MINOR = common dso_local global i32 0, align 4
@TTY_DRIVER_TYPE_SERIAL = common dso_local global i32 0, align 4
@SERIAL_TYPE_NORMAL = common dso_local global i32 0, align 4
@TTY_DRIVER_REAL_RAW = common dso_local global i32 0, align 4
@TTY_DRIVER_DYNAMIC_DEV = common dso_local global i32 0, align 4
@tty_std_termios = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@B9600 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@rfcomm_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't register RFCOMM TTY driver\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"RFCOMM TTY layer initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfcomm_init_ttys() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @RFCOMM_TTY_PORTS, align 4
  %3 = call %struct.TYPE_8__* @alloc_tty_driver(i32 %2)
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %5 = icmp ne %struct.TYPE_8__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %65

7:                                                ; preds = %0
  %8 = load i32, i32* @THIS_MODULE, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load i32, i32* @RFCOMM_TTY_MAJOR, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @RFCOMM_TTY_MINOR, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @TTY_DRIVER_TYPE_SERIAL, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @SERIAL_TYPE_NORMAL, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @TTY_DRIVER_REAL_RAW, align 4
  %28 = load i32, i32* @TTY_DRIVER_DYNAMIC_DEV, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = bitcast %struct.TYPE_7__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.TYPE_7__* @tty_std_termios to i8*), i64 8, i1 false)
  %35 = load i32, i32* @B9600, align 4
  %36 = load i32, i32* @CS8, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CREAD, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @HUPCL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CLOCAL, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @ICANON, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %55 = call i32 @tty_set_operations(%struct.TYPE_8__* %54, i32* @rfcomm_ops)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %57 = call i64 @tty_register_driver(%struct.TYPE_8__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %7
  %60 = call i32 @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rfcomm_tty_driver, align 8
  %62 = call i32 @put_tty_driver(%struct.TYPE_8__* %61)
  store i32 -1, i32* %1, align 4
  br label %65

63:                                               ; preds = %7
  %64 = call i32 @BT_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %63, %59, %6
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_8__* @alloc_tty_driver(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_set_operations(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @tty_register_driver(%struct.TYPE_8__*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @put_tty_driver(%struct.TYPE_8__*) #1

declare dso_local i32 @BT_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
