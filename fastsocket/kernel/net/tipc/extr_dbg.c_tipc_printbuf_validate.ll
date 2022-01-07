; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_dbg.c_tipc_printbuf_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_dbg.c_tipc_printbuf_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_buf = type { i64*, i32, i64* }

@.str = private unnamed_addr constant [34 x i8] c"\0A\0A*** PRINT BUFFER OVERFLOW ***\0A\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_printbuf_validate(%struct.print_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.print_buf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.print_buf, align 8
  store %struct.print_buf* %0, %struct.print_buf** %3, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %7 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %8 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

12:                                               ; preds = %1
  %13 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %14 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %17 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %15, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %12
  %25 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %26 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call i8* @kmalloc(i32 %27, i32 %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %35 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @tipc_printbuf_init(%struct.print_buf* %6, i8* %33, i32 %36)
  %38 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %39 = call i32 @tipc_printbuf_move(%struct.print_buf* %6, %struct.print_buf* %38)
  %40 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %41 = call i32 @tipc_printbuf_move(%struct.print_buf* %40, %struct.print_buf* %6)
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @kfree(i8* %42)
  %44 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %45 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call i32 @memcpy(i64* %46, i8* %47, i32 %49)
  br label %57

51:                                               ; preds = %24
  %52 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %53 = call i32 @tipc_printbuf_reset(%struct.print_buf* %52)
  %54 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @tipc_printf(%struct.print_buf* %54, i8* %55)
  br label %57

57:                                               ; preds = %51, %32
  br label %58

58:                                               ; preds = %57, %12
  %59 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %60 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.print_buf*, %struct.print_buf** %3, align 8
  %63 = getelementptr inbounds %struct.print_buf, %struct.print_buf* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = ptrtoint i64* %61 to i64
  %66 = ptrtoint i64* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 8
  %69 = add nsw i64 %68, 1
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %58, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @tipc_printbuf_init(%struct.print_buf*, i8*, i32) #1

declare dso_local i32 @tipc_printbuf_move(%struct.print_buf*, %struct.print_buf*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tipc_printbuf_reset(%struct.print_buf*) #1

declare dso_local i32 @tipc_printf(%struct.print_buf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
