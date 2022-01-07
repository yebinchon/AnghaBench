; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_load_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_load_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i64, %struct.section*, i32 }
%struct.section = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"elf_getshnum failed: %s\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"elf_getshstrndx failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"elf_getscn failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"gelf_getshdr failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@SHN_UNDEF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"elf_ndxscn failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"section index of '%s' out of range\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @load_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_sections(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  %10 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %11 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %10, i32 0, i32 1
  %12 = load %struct.section*, %struct.section** %11, align 8
  %13 = icmp eq %struct.section* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %17 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %20 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %19, i32 0, i32 0
  %21 = call i32 @elf_getshnum(i32 %18, i64* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = call i8* @elf_errmsg(i32 -1)
  %25 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %167

26:                                               ; preds = %1
  %27 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %28 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %167

32:                                               ; preds = %26
  %33 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %34 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.section* @calloc(i64 %35, i32 56)
  %37 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %38 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %37, i32 0, i32 1
  store %struct.section* %36, %struct.section** %38, align 8
  %39 = icmp eq %struct.section* %36, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  %42 = call i32 @err(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %45 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @elf_getshstrndx(i32 %46, i64* %7)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = call i8* @elf_errmsg(i32 -1)
  %51 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %167

52:                                               ; preds = %43
  %53 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %54 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32* @elf_getscn(i32 %55, i32 0)
  store i32* %56, i32** %5, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = call i8* @elf_errmsg(i32 -1)
  %60 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %167

61:                                               ; preds = %52
  %62 = call i32 (...) @elf_errno()
  br label %63

63:                                               ; preds = %152, %61
  %64 = load i32*, i32** %5, align 8
  %65 = call i32* @gelf_getshdr(i32* %64, %struct.TYPE_3__* %6)
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = call i8* @elf_errmsg(i32 -1)
  %69 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  %70 = call i32 (...) @elf_errno()
  br label %152

71:                                               ; preds = %63
  %72 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %73 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @elf_strptr(i32 %74, i64 %75, i32 %77)
  store i8* %78, i8** %4, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = call i32 (...) @elf_errno()
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %82

82:                                               ; preds = %80, %71
  %83 = load i32*, i32** %5, align 8
  %84 = call i64 @elf_ndxscn(i32* %83)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* @SHN_UNDEF, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = call i32 (...) @elf_errno()
  store i32 %88, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %9, align 4
  %92 = call i8* @elf_errmsg(i32 %91)
  %93 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %92)
  br label %152

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %82
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %98 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp uge i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %102)
  br label %152

104:                                              ; preds = %95
  %105 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %106 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %105, i32 0, i32 1
  %107 = load %struct.section*, %struct.section** %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds %struct.section, %struct.section* %107, i64 %108
  store %struct.section* %109, %struct.section** %3, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = load %struct.section*, %struct.section** %3, align 8
  %112 = getelementptr inbounds %struct.section, %struct.section* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.section*, %struct.section** %3, align 8
  %115 = getelementptr inbounds %struct.section, %struct.section* %114, i32 0, i32 10
  store i32* %113, i32** %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.section*, %struct.section** %3, align 8
  %119 = getelementptr inbounds %struct.section, %struct.section* %118, i32 0, i32 9
  store i32 %117, i32* %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.section*, %struct.section** %3, align 8
  %123 = getelementptr inbounds %struct.section, %struct.section* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.section*, %struct.section** %3, align 8
  %127 = getelementptr inbounds %struct.section, %struct.section* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.section*, %struct.section** %3, align 8
  %131 = getelementptr inbounds %struct.section, %struct.section* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.section*, %struct.section** %3, align 8
  %135 = getelementptr inbounds %struct.section, %struct.section* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.section*, %struct.section** %3, align 8
  %139 = getelementptr inbounds %struct.section, %struct.section* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.section*, %struct.section** %3, align 8
  %143 = getelementptr inbounds %struct.section, %struct.section* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.section*, %struct.section** %3, align 8
  %147 = getelementptr inbounds %struct.section, %struct.section* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.section*, %struct.section** %3, align 8
  %151 = getelementptr inbounds %struct.section, %struct.section* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %104, %101, %90, %67
  %153 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %154 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = call i32* @elf_nextscn(i32 %155, i32* %156)
  store i32* %157, i32** %5, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %63, label %159

159:                                              ; preds = %152
  %160 = call i32 (...) @elf_errno()
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i32, i32* %9, align 4
  %165 = call i8* @elf_errmsg(i32 %164)
  %166 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %23, %31, %49, %58, %163, %159
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @elf_getshnum(i32, i64*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i8* @elf_errmsg(i32) #1

declare dso_local %struct.section* @calloc(i64, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @elf_getshstrndx(i32, i64*) #1

declare dso_local i32* @elf_getscn(i32, i32) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_3__*) #1

declare dso_local i8* @elf_strptr(i32, i64, i32) #1

declare dso_local i64 @elf_ndxscn(i32*) #1

declare dso_local i32* @elf_nextscn(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
