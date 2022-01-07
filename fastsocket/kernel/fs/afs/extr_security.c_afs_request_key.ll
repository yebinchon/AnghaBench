; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_security.c_afs_request_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_security.c_afs_request_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.afs_cell = type { %struct.key* }

@.str = private unnamed_addr constant [5 x i8] c"{%x}\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"key %s\00", align 1
@key_type_rxrpc = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" = %ld\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" = {%x} [anon]\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" = {%x} [auth]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @afs_request_key(%struct.afs_cell* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.afs_cell*, align 8
  %4 = alloca %struct.key*, align 8
  store %struct.afs_cell* %0, %struct.afs_cell** %3, align 8
  %5 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %6 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %5, i32 0, i32 0
  %7 = load %struct.key*, %struct.key** %6, align 8
  %8 = call i32 @key_serial(%struct.key* %7)
  %9 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %11 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %10, i32 0, i32 0
  %12 = load %struct.key*, %struct.key** %11, align 8
  %13 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %17 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %16, i32 0, i32 0
  %18 = load %struct.key*, %struct.key** %17, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.key* @request_key(i32* @key_type_rxrpc, i32 %20, i32* null)
  store %struct.key* %21, %struct.key** %4, align 8
  %22 = load %struct.key*, %struct.key** %4, align 8
  %23 = call i64 @IS_ERR(%struct.key* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %1
  %26 = load %struct.key*, %struct.key** %4, align 8
  %27 = call i32 @PTR_ERR(%struct.key* %26)
  %28 = load i32, i32* @ENOKEY, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.key*, %struct.key** %4, align 8
  %33 = call i32 @PTR_ERR(%struct.key* %32)
  %34 = call i32 @_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.key*, %struct.key** %4, align 8
  store %struct.key* %35, %struct.key** %2, align 8
  br label %51

36:                                               ; preds = %25
  %37 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %38 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %37, i32 0, i32 0
  %39 = load %struct.key*, %struct.key** %38, align 8
  %40 = call i32 @key_serial(%struct.key* %39)
  %41 = call i32 @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %43 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %42, i32 0, i32 0
  %44 = load %struct.key*, %struct.key** %43, align 8
  %45 = call %struct.key* @key_get(%struct.key* %44)
  store %struct.key* %45, %struct.key** %2, align 8
  br label %51

46:                                               ; preds = %1
  %47 = load %struct.key*, %struct.key** %4, align 8
  %48 = call i32 @key_serial(%struct.key* %47)
  %49 = call i32 @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load %struct.key*, %struct.key** %4, align 8
  store %struct.key* %50, %struct.key** %2, align 8
  br label %51

51:                                               ; preds = %46, %36, %31
  %52 = load %struct.key*, %struct.key** %2, align 8
  ret %struct.key* %52
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local %struct.key* @request_key(i32*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local %struct.key* @key_get(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
