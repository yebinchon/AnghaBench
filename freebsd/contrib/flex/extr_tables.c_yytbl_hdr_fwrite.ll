; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_tables.c_yytbl_hdr_fwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_tables.c_yytbl_hdr_fwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yytbl_writer = type { i32, i32 }
%struct.yytbl_hdr = type { i64, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"th_magic|th_hsize write32 failed\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"fgetpos failed\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"th_ssize|th_flags write failed\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"th_version writen failed\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"th_name writen failed\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"pad64 failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yytbl_hdr_fwrite(%struct.yytbl_writer* %0, %struct.yytbl_hdr* %1) #0 {
  %3 = alloca %struct.yytbl_writer*, align 8
  %4 = alloca %struct.yytbl_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.yytbl_writer* %0, %struct.yytbl_writer** %3, align 8
  store %struct.yytbl_hdr* %1, %struct.yytbl_hdr** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.yytbl_writer*, %struct.yytbl_writer** %3, align 8
  %9 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %10 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @yytbl_write32(%struct.yytbl_writer* %8, i64 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.yytbl_writer*, %struct.yytbl_writer** %3, align 8
  %16 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %17 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @yytbl_write32(%struct.yytbl_writer* %15, i64 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %2
  %22 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @flex_die(i32 %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.yytbl_writer*, %struct.yytbl_writer** %3, align 8
  %28 = getelementptr inbounds %struct.yytbl_writer, %struct.yytbl_writer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.yytbl_writer*, %struct.yytbl_writer** %3, align 8
  %31 = getelementptr inbounds %struct.yytbl_writer, %struct.yytbl_writer* %30, i32 0, i32 0
  %32 = call i64 @fgetpos(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @flex_die(i32 %35)
  br label %37

37:                                               ; preds = %34, %24
  %38 = load %struct.yytbl_writer*, %struct.yytbl_writer** %3, align 8
  %39 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %40 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @yytbl_write32(%struct.yytbl_writer* %38, i64 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.yytbl_writer*, %struct.yytbl_writer** %3, align 8
  %46 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %47 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @yytbl_write16(%struct.yytbl_writer* %45, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %37
  %52 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 @flex_die(i32 %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 6
  store i32 %56, i32* %7, align 4
  %57 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %58 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strlen(i32 %59)
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  %62 = load %struct.yytbl_writer*, %struct.yytbl_writer** %3, align 8
  %63 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %64 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @yytbl_writen(%struct.yytbl_writer* %62, i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %72 = call i32 @flex_die(i32 %71)
  br label %73

73:                                               ; preds = %70, %54
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %78 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @strlen(i32 %79)
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  %82 = load %struct.yytbl_writer*, %struct.yytbl_writer** %3, align 8
  %83 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %84 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @yytbl_writen(%struct.yytbl_writer* %82, i32 %85, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %73
  %91 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %92 = call i32 @flex_die(i32 %91)
  br label %93

93:                                               ; preds = %90, %73
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.yytbl_writer*, %struct.yytbl_writer** %3, align 8
  %98 = call i32 @yytbl_write_pad64(%struct.yytbl_writer* %97)
  store i32 %98, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %102 = call i32 @flex_die(i32 %101)
  br label %103

103:                                              ; preds = %100, %93
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.yytbl_hdr*, %struct.yytbl_hdr** %4, align 8
  %109 = getelementptr inbounds %struct.yytbl_hdr, %struct.yytbl_hdr* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = icmp ne i32 %107, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %115 = call i32 @flex_die(i32 %114)
  br label %116

116:                                              ; preds = %113, %103
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i64 @yytbl_write32(%struct.yytbl_writer*, i64) #1

declare dso_local i32 @flex_die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @fgetpos(i32, i32*) #1

declare dso_local i64 @yytbl_write16(%struct.yytbl_writer*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @yytbl_writen(%struct.yytbl_writer*, i32, i32) #1

declare dso_local i32 @yytbl_write_pad64(%struct.yytbl_writer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
