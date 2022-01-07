; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_obj_coff_init_stab_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_obj_coff_init_stab_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"str\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obj_coff_init_stab_section(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = call i8* @frag_more(i32 12)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @memset(i8* %8, i32 0, i32 12)
  %10 = call i32 @as_where(i8** %3, i32* null)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strlen(i32 %13)
  %15 = add nsw i64 %14, 4
  %16 = call i8* @xmalloc(i64 %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcpy(i8* %17, i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @get_stab_string_offset(i8* %24, i8* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @know(i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @md_number_to_chars(i8* %31, i32 %32, i32 4)
  ret void
}

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @as_where(i8**, i32*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @get_stab_string_offset(i8*, i8*) #1

declare dso_local i32 @know(i32) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
