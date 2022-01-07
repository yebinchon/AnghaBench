; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kgdb.c_kgdb_msg_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kgdb.c_kgdb_msg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdbmsgbuf = common dso_local global i8* null, align 8
@BUFMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @kgdb_msg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_msg_write(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** @gdbmsgbuf, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 79, i8* %9, align 1
  br label %10

10:                                               ; preds = %43, %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %10
  %14 = load i8*, i8** @gdbmsgbuf, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 1
  %18 = load i32, i32* @BUFMAX, align 4
  %19 = sub nsw i32 %18, 2
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @BUFMAX, align 4
  %23 = sub nsw i32 %22, 2
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %21
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i8* @pack_hex_byte(i8* %33, i8 signext %38)
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load i8*, i8** %5, align 8
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* %6, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i8*, i8** @gdbmsgbuf, align 8
  %53 = call i32 @put_packet(i8* %52)
  br label %10

54:                                               ; preds = %10
  ret void
}

declare dso_local i8* @pack_hex_byte(i8*, i8 signext) #1

declare dso_local i32 @put_packet(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
