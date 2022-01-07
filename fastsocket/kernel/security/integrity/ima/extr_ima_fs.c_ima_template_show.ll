; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_fs.c_ima_template_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_fs.c_ima_template_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ima_template_data = type { i32*, i32* }

@.str = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@IMA_DIGEST_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_template_show(%struct.seq_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ima_template_data*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ima_template_data*
  store %struct.ima_template_data* %10, %struct.ima_template_data** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %42 [
    i32 129, label %12
    i32 128, label %23
  ]

12:                                               ; preds = %3
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = load %struct.ima_template_data*, %struct.ima_template_data** %7, align 8
  %15 = getelementptr inbounds %struct.ima_template_data, %struct.ima_template_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ima_print_digest(%struct.seq_file* %13, i32* %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load %struct.ima_template_data*, %struct.ima_template_data** %7, align 8
  %20 = getelementptr inbounds %struct.ima_template_data, %struct.ima_template_data* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %21)
  br label %43

23:                                               ; preds = %3
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = load %struct.ima_template_data*, %struct.ima_template_data** %7, align 8
  %26 = getelementptr inbounds %struct.ima_template_data, %struct.ima_template_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @IMA_DIGEST_SIZE, align 4
  %29 = call i32 @ima_putc(%struct.seq_file* %24, i32* %27, i32 %28)
  %30 = load %struct.ima_template_data*, %struct.ima_template_data** %7, align 8
  %31 = getelementptr inbounds %struct.ima_template_data, %struct.ima_template_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @strlen(i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = call i32 @ima_putc(%struct.seq_file* %34, i32* %8, i32 4)
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = load %struct.ima_template_data*, %struct.ima_template_data** %7, align 8
  %38 = getelementptr inbounds %struct.ima_template_data, %struct.ima_template_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ima_putc(%struct.seq_file* %36, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %3, %23
  br label %43

43:                                               ; preds = %42, %12
  ret void
}

declare dso_local i32 @ima_print_digest(%struct.seq_file*, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32*) #1

declare dso_local i32 @ima_putc(%struct.seq_file*, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
