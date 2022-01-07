; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_do_self_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_do_self_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchstr = type { i8*, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@argbuf_index = common dso_local global i32 0, align 4
@n_switches = common dso_local global i32 0, align 4
@switches = common dso_local global %struct.switchstr* null, align 8
@argbuf = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"switch '%s' does not start with '-'\00", align 1
@SWITCH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_self_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_self_spec(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.switchstr*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @do_spec_2(i8* %6)
  %8 = call i32 @do_spec_1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  %9 = load i32, i32* @argbuf_index, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %82

11:                                               ; preds = %1
  %12 = load i32, i32* @n_switches, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @argbuf_index, align 4
  %14 = load i32, i32* @n_switches, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* @n_switches, align 4
  %16 = load %struct.switchstr*, %struct.switchstr** @switches, align 8
  %17 = load i32, i32* @n_switches, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 40, %19
  %21 = trunc i64 %20 to i32
  %22 = call %struct.switchstr* @xrealloc(%struct.switchstr* %16, i32 %21)
  store %struct.switchstr* %22, %struct.switchstr** @switches, align 8
  %23 = load %struct.switchstr*, %struct.switchstr** @switches, align 8
  %24 = load i32, i32* @n_switches, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.switchstr, %struct.switchstr* %23, i64 %25
  %27 = load %struct.switchstr*, %struct.switchstr** @switches, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.switchstr, %struct.switchstr* %27, i64 %29
  %31 = bitcast %struct.switchstr* %26 to i8*
  %32 = bitcast %struct.switchstr* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 40, i1 false)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %78, %11
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @argbuf_index, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %81

37:                                               ; preds = %33
  %38 = load i8**, i8*** @argbuf, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 45
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load i8**, i8*** @argbuf, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %47, %37
  %55 = load %struct.switchstr*, %struct.switchstr** @switches, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.switchstr, %struct.switchstr* %55, i64 %59
  store %struct.switchstr* %60, %struct.switchstr** %5, align 8
  %61 = load i8**, i8*** @argbuf, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load %struct.switchstr*, %struct.switchstr** %5, align 8
  %68 = getelementptr inbounds %struct.switchstr, %struct.switchstr* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load %struct.switchstr*, %struct.switchstr** %5, align 8
  %70 = getelementptr inbounds %struct.switchstr, %struct.switchstr* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @SWITCH_OK, align 4
  %72 = load %struct.switchstr*, %struct.switchstr** %5, align 8
  %73 = getelementptr inbounds %struct.switchstr, %struct.switchstr* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.switchstr*, %struct.switchstr** %5, align 8
  %75 = getelementptr inbounds %struct.switchstr, %struct.switchstr* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.switchstr*, %struct.switchstr** %5, align 8
  %77 = getelementptr inbounds %struct.switchstr, %struct.switchstr* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %54
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %33

81:                                               ; preds = %33
  br label %82

82:                                               ; preds = %81, %1
  ret void
}

declare dso_local i32 @do_spec_2(i8*) #1

declare dso_local i32 @do_spec_1(i8*, i32, i32*) #1

declare dso_local %struct.switchstr* @xrealloc(%struct.switchstr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fatal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
