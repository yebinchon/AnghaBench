; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_write_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_write_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { %struct.symbol*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.buffer = type { i32 }

@SYMBOL_HASH_SIZE = common dso_local global i32 0, align 4
@symbolhash = common dso_local global %struct.symbol** null, align 8
@.str = private unnamed_addr constant [17 x i8] c"0x%08x\09%s\09%s\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @write_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_dump(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.buffer, align 4
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = bitcast %struct.buffer* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %46, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @SYMBOL_HASH_SIZE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %7
  %12 = load %struct.symbol**, %struct.symbol*** @symbolhash, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.symbol*, %struct.symbol** %12, i64 %14
  %16 = load %struct.symbol*, %struct.symbol** %15, align 8
  store %struct.symbol* %16, %struct.symbol** %4, align 8
  br label %17

17:                                               ; preds = %41, %11
  %18 = load %struct.symbol*, %struct.symbol** %4, align 8
  %19 = icmp ne %struct.symbol* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  %21 = load %struct.symbol*, %struct.symbol** %4, align 8
  %22 = call i64 @dump_sym(%struct.symbol* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load %struct.symbol*, %struct.symbol** %4, align 8
  %26 = getelementptr inbounds %struct.symbol, %struct.symbol* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.symbol*, %struct.symbol** %4, align 8
  %29 = getelementptr inbounds %struct.symbol, %struct.symbol* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.symbol*, %struct.symbol** %4, align 8
  %32 = getelementptr inbounds %struct.symbol, %struct.symbol* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.symbol*, %struct.symbol** %4, align 8
  %37 = getelementptr inbounds %struct.symbol, %struct.symbol* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @export_str(i32 %38)
  %40 = call i32 @buf_printf(%struct.buffer* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %24, %20
  %42 = load %struct.symbol*, %struct.symbol** %4, align 8
  %43 = getelementptr inbounds %struct.symbol, %struct.symbol* %42, i32 0, i32 0
  %44 = load %struct.symbol*, %struct.symbol** %43, align 8
  store %struct.symbol* %44, %struct.symbol** %4, align 8
  br label %17

45:                                               ; preds = %17
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %7

49:                                               ; preds = %7
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @write_if_changed(%struct.buffer* %3, i8* %50)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @dump_sym(%struct.symbol*) #2

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @export_str(i32) #2

declare dso_local i32 @write_if_changed(%struct.buffer*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
